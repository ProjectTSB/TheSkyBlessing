`use strict`;
import fsp from "fs/promises";


type FileType = "advancement" | "damage_type" | "dimension" | "dimension_type" | "function" | "item_modifier" | "loot_table" | "predicate" | "recipe" | "structure" | "tag/block" | "tag/damage_type" | "tag/entity_type" | "tag/fluid" | "tag/function" | "tag/game_event" | "tag/item" | "tag/worldgen/biome" | "tag/worldgen/configured_carver" | "tag/worldgen/configured_decorator" | "tag/worldgen/configured_feature" | "tag/worldgen/configured_structure_feature" | "tag/worldgen/configured_surface_builder" | "tag/worldgen/density_function" | "tag/worldgen/noise" | "tag/worldgen/noise_settings" | "tag/worldgen/placed_feature" | "tag/worldgen/processor_list" | "tag/worldgen/structure" | "tag/worldgen/structure_set" | "tag/worldgen/template_pool" | "worldgen/biome" | "worldgen/configured_carver" | "worldgen/configured_decorator" | "worldgen/configured_feature" | "worldgen/configured_structure_feature" | "worldgen/configured_surface_builder" | "worldgen/density_function" | "worldgen/flat_level_generator_preset" | "worldgen/noise" | "worldgen/noise_settings" | "worldgen/placed_feature" | "worldgen/processor_list" | "worldgen/structure" | "worldgen/structure_set" | "worldgen/template_pool" | "worldgen/world_preset"
type CacheType = FileType | "bossbar" | "entity" | "objective" | "score_holder" | "storage" | "tag" | "team" | "color" | "alias/entity" | "alias/uuid" | "alias/vector"
type CacheUnitPositionType = "dcl" | "def" | "ref"
type CacheVisibility = { pattern: string, type: FileType | "*" }
type CachePosition = { uri?: string, visibility?: CacheVisibility[], start?: number, startLine?: number, startChar?: number, end?: number, endLine?: number, endChar?: number }
type CacheUnit = { doc?: string, foo?: any } & { [t in CacheUnitPositionType]?: CachePosition[] }
type CacheCategory = { [resourceId: string]: CacheUnit }
type ClientCache = { [type in CacheType]?: CacheCategory }
type Document = { str: string, from: { uri: string, line: [number, number] }[], type: CacheType, resId: string };

const throwError: (message: string) => never = m => { throw new Error(m) };
const env: { getOrDefault: (key: string, defaultValue: string) => string, getOrThrow: (key: string) => string } = {
    getOrDefault: (key, defaultValue) => process.env[key] ?? defaultValue,
    getOrThrow: key => process.env[key] ?? throwError(`Missing environment key: ${key}`)
};

const accessorToString = (visibilities: [type: FileType, pattern: string][]): string => {
    const toMessages = (visibility: [type: FileType, pattern: string]) =>
        (visibility[0] as string) !== "*" ? `${visibility[0]} ${visibility[1]}` : visibility[1];
    if (visibilities.length == 1) {
        return `# @within ${toMessages(visibilities[0])}`;
    }
    return ["# @within", ...visibilities.map(v => toMessages(v)).map(s => `#   ${s}`)].join("\n");
}

const run = async () => {
    const checkoutPath = env.getOrThrow("CHECKOUT_PATH");
    const reposName = env.getOrThrow("REPOSITORY");
    const branch = env.getOrDefault("BRANCH", "master");
    const indent = parseInt(env.getOrDefault("INDENT", "4"));
    const testPaths: [string, string][] = env.getOrThrow("VISIBILITY_FILTER")
        .split(/,|\n/)
        .map(s => s.trim().split("@") as [string, string]);
    const outputPath = env.getOrDefault("OUTPUT_PATH", "./declares.mcfunction");
    const outputResourcePath = env.getOrDefault("OUTPUT_RESOURCE_PATH", "minecraft:declares");
    const defaultVisibility: [FileType, string] = (() => {
        const dv = env.getOrDefault("DEFAULT_VISIBILITY", "public");
        return dv === "public" ? ["*" as FileType, "**"] : dv.split("@") as [FileType, string];
    })();

    const dlsData: ClientCache = JSON.parse(await fsp.readFile(".cache/dls.json", { encoding: "utf-8" })).cache;

    const vpReplacers: [RegExp, string][] = [[/\?/g, "[^:/]"], [/\*\*\//g, ".{0,}"], [/\*\*/g, ".{0,}"], [/\*/g, "[^:/]{0,}"]];
    const decMap: Map<string, { declare: Document[], alias: Document[] }> = new Map();
    for (const [type, cache] of Object.entries(dlsData) as [CacheType, CacheCategory][]) {
        for (const [resourceId, { dcl, def, foo }] of Object.entries(cache)) {
            const declares = [...(dcl ?? []), ...(def ?? [])];
            const matched = declares
                .some(cpos =>
                    (cpos.visibility?.map(cv => [cv.type, cv.pattern]) ?? [defaultVisibility])
                        .map(([a, b]) =>
                            [a, RegExp(`^${vpReplacers.reduce((s, [r1, r2]) => s.replace(r1, r2), b)}$`)] as [string, RegExp]
                        )
                        .some(([actualType, re]) =>
                            testPaths.some(([expectType, path]) =>
                                ["", "*", expectType].includes(actualType) && re.test(path)
                            )
                        )
                );
            if (!matched) continue;

            const trimHeadIf = (s: string, ifString: string): string => s.startsWith(ifString) ? s.slice(ifString.length) : s;
            const key = accessorToString(declares.flatMap(v => v.visibility?.map(w => [w.type, w.pattern] as [FileType, string]) ?? [defaultVisibility]))
            const decs = decMap.get(key) ?? { declare: [], alias: [] };
            const from: { uri: string, line: [number, number] }[] = declares
                .filter(d => d.uri).map(v => v as CachePosition & { uri: string })
                .map(cp => ({
                    uri: trimHeadIf(
                        decodeURI(cp.uri.slice("file://".length)).replace(checkoutPath, `https://github.com/${reposName}/blob/${branch}/`),
                        "/"
                    ),
                    line: [(cp.startLine ?? 0) + 1, (cp.endLine ?? 0) + 1]
                }));
            if (type.startsWith("alias")) {
                decs.alias.push({ str: `#alias ${type.slice("alias/".length)} ${resourceId} ${foo}`, from, type, resId: resourceId });
            } else {
                decs.declare.push({ str: `#declare ${type} ${resourceId}`, from, type, resId: resourceId });
            }
            decMap.set(key, decs);
        }
    }
    const sort = (a: Document, b: Document) => {
        const x = a.type.localeCompare(b.type);
        if (x !== 0) return x;
        return a.resId.localeCompare(b.resId);
    };
    const declares = [
        `#> ${outputResourcePath}`,
        "# @private",
        "",
        Array.from(decMap.entries())
            .map(([accessor, v]) => {
                const docs = [...v.alias.sort(sort), ...v.declare.sort(sort)];
                const maxDecLen = docs.reduce((a, b) => Math.max(a, b.str.length), 0);
                const i = docs.length !== 1 ? " ".repeat(indent) : "";
                return [
                    `#> declare`,
                    ...accessor.split("\n").map(v => v === "# @within * **" ? "# @public" : v),
                    ...docs.flatMap(s => {
                        if (s.from.length === 1) {
                            const line = s.from
                                ? s.from[0].line[0] !== s.from[0].line[1]
                                    ? `L${s.from[0].line[0]}-L${s.from[0].line[1]}`
                                    : `L${s.from[0].line[0]}`
                                : "L1";
                            return [`${i}${s.str} ${" ".repeat(maxDecLen - s.str.length)}from ${s.from[0].uri}#${line}`];
                        }
                        const from = s.from.map(f => {
                            const line = s.from
                                ? f.line[0] !== f.line[1]
                                    ? `L${f.line[0]}-L${f.line[1]}`
                                    : `L${f.line[0]}`
                                : "L1";
                            return `${i}# from ${f.uri}#${line}`;
                        });
                        return [...from, `${i}${s.str}`];
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