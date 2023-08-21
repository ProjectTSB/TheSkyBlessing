`use strict`;
const fsp = require("fs/promises");

/**
 * @typedef {"advancement" | "damage_type" | "dimension" | "dimension_type" | "function" | "item_modifier" | "loot_table" | "predicate" | "recipe" | "structure" | "tag/block" | "tag/damage_type" | "tag/entity_type" | "tag/fluid" | "tag/function" | "tag/game_event" | "tag/item" | "tag/worldgen/biome" | "tag/worldgen/configured_carver" | "tag/worldgen/configured_decorator" | "tag/worldgen/configured_feature" | "tag/worldgen/configured_structure_feature" | "tag/worldgen/configured_surface_builder" | "tag/worldgen/density_function" | "tag/worldgen/noise" | "tag/worldgen/noise_settings" | "tag/worldgen/placed_feature" | "tag/worldgen/processor_list" | "tag/worldgen/structure" | "tag/worldgen/structure_set" | "tag/worldgen/template_pool" | "worldgen/biome" | "worldgen/configured_carver" | "worldgen/configured_decorator" | "worldgen/configured_feature" | "worldgen/configured_structure_feature" | "worldgen/configured_surface_builder" | "worldgen/density_function" | "worldgen/flat_level_generator_preset" | "worldgen/noise" | "worldgen/noise_settings" | "worldgen/placed_feature" | "worldgen/processor_list" | "worldgen/structure" | "worldgen/structure_set" | "worldgen/template_pool" | "worldgen/world_preset"} FileType
 * @typedef {FileType  | "bossbar" | "entity" | "objective" | "score_holder" | "storage" | "tag" | "team" | "color" | "alias/entity" | "alias/uuid" | "alias/vector"} CacheType
 * @typedef {"dcl" | "def" | "ref"} CacheUnitPositionType
 * @typedef {{ pattern: string, type: FileType | "*" }} CacheVisibility
 * @typedef {{ uri?: string, visibility?: CacheVisibility[], start?: number, startLine?: number, startChar?: number, end?: number, endLine?: number, endChar?: number }} CachePosition
 * @typedef {{ doc?: string, foo?: any} & {[t in CacheUnitPositionType]?: CachePosition[] }} CacheUnit
 * @typedef {{ [resourceId: string]: CacheUnit }} CacheCategory
 * @typedef {{ [type in CacheType]?: CacheCategory }} ClientCache
 * */
/** @type {(paths: string[]) => void} */
const run = async () => {
    /** @type {(message: string) => never} */
    const throwError = m => { throw new Error(m) }
    const env = {
        /** @type {(key: string, defaultValue: string) => string} */
        getOrDefault: (key, defaultValue) => process.env[key] ?? defaultValue,
        /** @type {(key: string) => string} */
        getOrThrow: key => process.env[key] ?? throwError(`Missing environment key: ${key}`)
    };
    const checkoutPath = env.getOrThrow('CHECKOUT_PATH');
    const reposName = env.getOrThrow('REPOSITORY');
    const branch = env.getOrDefault('BRANCH', "master");
    const indent = env.getOrDefault('INDENT', 4);
    const visibilityFilter = env.getOrThrow('VISIBILITY_FILTER');
    const outputPath = env.getOrDefault('OUTPUT_PATH', "./declares.mcfunction");
    const outputResourcePath = env.getOrDefault('OUTPUT_RESOURCE_PATH', "minecraft:declares");
    const defaultVisibility = (() => {
        const dv = env.getOrDefault('DEFAULT_VISIBILITY', "public");
        return dv === "public" ? "**" : dv;
    })();

    /** @type {ClientCache} */
    const dlsData = JSON.parse(await fsp.readFile(".cache/dls.json", { encoding: "utf-8" })).cache;

    /** @typedef {{ str: string, from: { uri: string | undefined, line: [number, number] | undefined } }} Hoge */
    /** @type {Map<string, { declare: Hoge[], alias: Hoge[] }>} */
    const decMap = new Map();
    for (const [t, cache] of Object.entries(dlsData)) {
        /** @type {CacheType} */
        const type = t;
        for (const [resourceId, { doc, dcl, def, foo }] of Object.entries(cache)) {
            const cp = [...(dcl ?? []), ...(def ?? [])].find(cpos =>
                (cpos.visibility?.map(cv => cv.pattern) ?? [defaultVisibility])
                    .some(cp => RegExp(`^(${visibilityFilter})$`).test(cp))
            );
            if (!cp) continue;
            const decs = decMap.get(doc ?? defaultVisibility) ?? { declare: [], alias: [] };
            const from = {
                uri: cp.uri,
                line: cp.startLine !== undefined && cp.endLine !== undefined && [cp.startLine + 1, cp.endLine + 1]
            }
            if (type.startsWith("alias")) {
                decs.alias.push({ str: `#alias ${resourceId} ${foo}`, from });
            } else {
                decs.declare.push({ str: `#declare ${type} ${resourceId}`, from });
            }
            decMap.set(doc ?? defaultVisibility, decs);
        }
    }
    const declares = [
        `#> ${outputResourcePath}`,
        "# @private",
        "",
        Array.from(decMap.entries())
            .map(([doc, v]) => {
                const lines = doc.replace(/\n{3}|\n{2}/g, "\n").split("\n");
                const hoge = [...v.alias, ...v.declare];
                return [
                    `#> ${lines[0]}`,
                    ...lines.slice(1).map(v => `# ${v}`),
                    ...hoge.map(s => {
                        const line = s.from
                            ? s.from.line[0] !== s.from.line[1]
                                ? `L${s.from.line[0]}-L${s.from.line[1]}`
                                : `L${s.from.line[0]}`
                            : "L1";
                        return `${hoge.length !== 1 ? " ".repeat(indent) : ""}${s.str}  // declared from: ${s.from.uri.replace(checkoutPath, `https://github.com/${reposName}/blob/${branch}/`)}#${line}`
                    })
                ].join("\n");
            })
            .join("\n\n"),
        ""
    ].join("\n");
    console.log(declares)
    await fsp.mkdir(require("path").dirname(outputPath), { recursive: true })
    await fsp.writeFile(outputPath, declares)
};

run()