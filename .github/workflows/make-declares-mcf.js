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
    const throwError = m => { throw new Error(m) };
    const env = {
        /** @type {(key: string, defaultValue: string) => string} */
        getOrDefault: (key, defaultValue) => process.env[key] ?? defaultValue,
        /** @type {(key: string) => string} */
        getOrThrow: key => process.env[key] ?? throwError(`Missing environment key: ${key}`)
    };

    const checkoutPath = env.getOrThrow("CHECKOUT_PATH");
    const reposName = env.getOrThrow("REPOSITORY");
    const branch = env.getOrDefault("BRANCH", "master");
    const indent = env.getOrDefault("INDENT", 4);
    /** @type { [string, string][] } */
    const testPaths = env.getOrThrow("VISIBILITY_FILTER").split(/,|\n/).map(s => s.trim().split("@"));
    const outputPath = env.getOrDefault("OUTPUT_PATH", "./declares.mcfunction");
    const outputResourcePath = env.getOrDefault("OUTPUT_RESOURCE_PATH", "minecraft:declares");
    /** @type { [string, string] } */
    const defaultVisibility = (() => {
        const dv = env.getOrDefault("DEFAULT_VISIBILITY", "public");
        return dv === "public" ? ["*", "**"] : dv.split("@");
    })();

    /** @type {ClientCache} */
    const dlsData = JSON.parse(await fsp.readFile(".cache/dls.json", { encoding: "utf-8" })).cache;

    /** @typedef {{ str: string, from: { uri: string | undefined, line: [number, number] | undefined }, type: CacheType, resId: string }} Document */
    /** @type {[string, string][]} */
    const vpReplacers = [[/\?/g, "[^:/]"], [/\*\*\//g, ".{0,}"], [/\*\*/g, ".{0,}"], [/\*/g, "[^:/]{0,}"]];
    /** @type {Map<string, { declare: Document[], alias: Document[] }>} */
    const decMap = new Map();
    for (const [type, cache] of Object.entries(dlsData)) {
        for (const [resourceId, { doc, dcl, def, foo }] of Object.entries(cache)) {
            const cp = [...(dcl ?? []), ...(def ?? [])].find(cpos => {
                const visibilityREs = (cpos.visibility?.map(cv => [cv.type, cv.pattern]) ?? [defaultVisibility])
                    .map(([a, b]) => [a, RegExp(`^${vpReplacers.reduce((s, [r1, r2]) => s.replace(r1, r2), b)}$`)]);
                return visibilityREs.some(([actualType, re]) =>
                    testPaths.some(([expectType, path]) =>
                        ["", "*", expectType].includes(actualType) && re.test(path)
                    )
                );
            });
            if (!cp) continue;

            const decs = decMap.get(doc ?? defaultVisibility[1]) ?? { declare: [], alias: [] };
            const from = {
                uri: decodeURI(cp.uri.slice("file://")).replace(checkoutPath, `https://github.com/${reposName}/blob/${branch}/`),
                line: cp.startLine !== undefined && cp.endLine !== undefined && [cp.startLine + 1, cp.endLine + 1]
            };
            if (type.startsWith("alias")) {
                decs.alias.push({ str: `#alias ${type.slice("alias/".length)} ${resourceId} ${foo}`, from, type, resId: resourceId });
            } else {
                decs.declare.push({ str: `#declare ${type} ${resourceId}`, from, type, resId: resourceId });
            }
            decMap.set(doc ?? defaultVisibility[1], decs);
        }
    }
    const sort = (a, b) => {
        const x = a.type.localeCompare(b.type);
        if (x !== 0) return x;
        return a.resId.localeCompare(b.resId);
    };
    const declares = [
        `#> ${outputResourcePath}`,
        "# @private",
        "",
        Array.from(decMap.entries())
            .map(([doc, v]) => {
                const lines = doc.replace(/\n{3}|\n{2}/g, "\n").split("\n");
                const docs = [...v.alias.sort(sort), ...v.declare.sort(sort)];
                const maxDecLen = docs.reduce((a, b) => Math.max(a, b.str.length), 0);
                const i = docs.length !== 1 ? " ".repeat(indent) : "";
                return [
                    `#> ${lines[0]}`,
                    ...lines.slice(1).map(v => `# ${v}`),
                    ...docs.map(s => {
                        const line = s.from
                            ? s.from.line[0] !== s.from.line[1]
                                ? `L${s.from.line[0]}-L${s.from.line[1]}`
                                : `L${s.from.line[0]}`
                            : "L1";
                        return `${i}${s.str} ${" ".repeat(maxDecLen - s.str.length)}from ${s.from.uri}#${line}`;
                    })
                ].join("\n");
            })
            .join("\n\n"),
        ""
    ].join("\n");
    await fsp.mkdir(require("path").dirname(outputPath), { recursive: true });
    await fsp.writeFile(outputPath, declares);
};

run();