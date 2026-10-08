// Font inputs, output paths, dependencies and regeneration: scripts/text/README.md
const fs = require("node:fs"),
    path = require("node:path"),
    crypto = require("node:crypto");
const { execFileSync } = require("node:child_process");
const [pack, vanilla, output] = process.argv.slice(2);
if (process.argv.length !== 5)
    throw Error(
        "Usage: node scripts/text/generate_widths.cjs <resource-pack> <vanilla-assets> <output-dir>",
    );
const { PNG } = require("pngjs");
const roots = [path.resolve(pack, "assets"), path.resolve(vanilla)];
const canonical = (id) => (id.includes(":") ? id : `minecraft:${id}`);
function file(root, id, prefix = "") {
    const [ns, name] = canonical(id).split(":");
    return path.join(root, ns, prefix, name);
}
function asset(id, prefix = "") {
    for (const root of roots) {
        const p = file(root, id, prefix);
        if (fs.existsSync(p)) return p;
    }
    throw Error(`Missing asset ${id}`);
}
// Keep Japanese, ASCII, assigned punctuation/symbols, and explicitly defined spacing glyphs.
const textRanges = [
    [0x20, 0x7e],
    [0x2100, 0x218f],
    [0x2460, 0x24ff],
    [0x3000, 0x30ff],
    [0x31f0, 0x31ff],
    [0x3400, 0x4dbf],
    [0x4e00, 0x9fff],
    [0xff00, 0xffef],
];
const spacingGlyphs = new Set();
function snbt(value) {
    // SNBT has no JSON Unicode escapes; line breaks are not supported in a single-line label.
    return (
        "{" +
        Object.entries(value)
            .map(
                ([c, v]) =>
                    '"' +
                    c.replaceAll("\\", "\\\\").replaceAll('"', '\\"') +
                    '":' +
                    v,
            )
            .join(",") +
        "}"
    );
}
function supportedCharacter(c) {
    const cp = c.codePointAt(0);
    if (cp < 0x20 || c === "§") return false;
    return (
        spacingGlyphs.has(c) ||
        (/\p{Assigned}/u.test(c) &&
            (textRanges.some(([from, to]) => cp >= from && cp <= to) ||
                /[\p{P}\p{S}\p{Zs}]/u.test(c)))
    );
}
const cache = new Map(),
    active = new Set(),
    images = new Map(),
    hexes = new Map();
function font(id) {
    id = canonical(id);
    if (cache.has(id)) return cache.get(id);
    if (active.has(id)) throw Error(`Font reference cycle ${id}`);
    active.add(id);
    const result = new Map();
    if (!roots.some((root) => fs.existsSync(file(root, id + ".json", "font"))))
        throw Error(`Missing font definition: ${id}`);
    for (const root of roots) {
        const p = file(root, id + ".json", "font");
        if (!fs.existsSync(p)) continue;
        for (const provider of JSON.parse(fs.readFileSync(p)).providers) {
            let glyphs = new Map();
            const type = provider.type.replace("minecraft:", "");
            if (type === "reference") glyphs = font(provider.id);
            else if (type === "space") {
                for (const [c, a] of Object.entries(provider.advances)) {
                    if (id !== "minecraft:space") spacingGlyphs.add(c);
                    glyphs.set(c, [a * 2, 2, c.length]);
                }
            } else if (type === "bitmap") {
                const f = asset(provider.file, "textures");
                if (!images.has(f))
                    images.set(f, PNG.sync.read(fs.readFileSync(f)));
                const image = images.get(f),
                    rows = provider.chars.map((r) => [...r]);
                const w = image.width / rows[0].length,
                    h = image.height / rows.length,
                    scale = Math.fround((provider.height ?? 8) / h);
                rows.forEach((row, y) =>
                    row.forEach((c, x) => {
                        if (c === "\0") return;
                        let ink = 0;
                        for (let dx = w - 1; dx >= 0; dx--) {
                            let found = false;
                            for (let dy = 0; dy < h; dy++)
                                if (
                                    image.data[
                                        ((y * h + dy) * image.width +
                                            x * w +
                                            dx) *
                                            4 +
                                            3
                                    ]
                                ) {
                                    found = true;
                                    break;
                                }
                            if (found) {
                                ink = dx + 1;
                                break;
                            }
                        }
                        const advance =
                            Math.trunc(
                                Math.fround(Math.fround(ink * scale) + 0.5),
                            ) + 1;
                        glyphs.set(c, [advance * 2, 2, c.length]);
                    }),
                );
            } else if (type === "unihex") {
                const f = asset(provider.hex_file);
                if (!hexes.has(f)) {
                    const names = execFileSync("unzip", ["-Z1", f], {
                        encoding: "utf8",
                    })
                        .trim()
                        .split("\n")
                        .filter((n) => n.endsWith(".hex"));
                    hexes.set(
                        f,
                        names
                            .map((n) =>
                                execFileSync("unzip", ["-p", f, n], {
                                    encoding: "utf8",
                                    maxBuffer: 32 * 1024 * 1024,
                                }),
                            )
                            .join("\n"),
                    );
                }
                for (const line of hexes.get(f).trim().split("\n")) {
                    if (!line) continue;
                    const [code, bitmap] = line.split(":"),
                        cp = parseInt(code, 16),
                        c = String.fromCodePoint(cp),
                        bits = bitmap.length / 4;
                    let left = 0,
                        right = bits;
                    const override = (provider.size_overrides ?? []).find(
                        (o) =>
                            cp >= o.from.codePointAt(0) &&
                            cp <= o.to.codePointAt(0),
                    );
                    if (override) {
                        left = override.left;
                        right = override.right;
                    } else {
                        let union = 0n;
                        const digits = bitmap.length / 16;
                        for (let i = 0; i < 16; i++)
                            union |= BigInt(
                                "0x" +
                                    bitmap.slice(i * digits, (i + 1) * digits),
                            );
                        if (union) {
                            left = 0;
                            while (!(union & (1n << BigInt(bits - left - 1))))
                                left++;
                            right = bits - 1;
                            while (!(union & (1n << BigInt(bits - right - 1))))
                                right--;
                        }
                    }
                    glyphs.set(c, [
                        (Math.trunc((right - left + 1) / 2) + 1) * 2,
                        1,
                        c.length,
                    ]);
                }
            } else
                throw Error(`Unsupported provider ${provider.type} in ${id}`);
            for (const [c, g] of glyphs) if (!result.has(c)) result.set(c, g);
        }
    }
    active.delete(id);
    cache.set(id, result);
    return result;
}
const ids = new Set([
    "minecraft:default",
    "minecraft:uniform",
    "minecraft:space",
]);
for (const c of font("minecraft:uniform").keys())
    if (!font("minecraft:default").has(c))
        throw Error("Default font cannot share this uniform fallback");
const lines = [
    "#> lib:text/core/tables",
    "#",
    "# Generated by scripts/text/generate_widths.cjs",
    "# @within function lib:text/core/load",
    "",
    "# フォント別の文字幅表を読み込む",
    "    data modify storage lib:text_fonts Fonts set value {}",
];
let count = 0,
    skipped = 0;
for (const id of [...ids].sort()) {
    let chunk = {};
    let n = 0;
    const emit = () => {
        if (!n) return;
        lines.push(
            `    data modify storage lib:text_fonts Fonts.${JSON.stringify(id)} merge value ${snbt(chunk)}`,
        );
        chunk = {};
        n = 0;
    };
    lines.push(
        `    data modify storage lib:text_fonts Fonts.${JSON.stringify(id)} set value {}`,
    );
    for (const [c, g] of font(id)) {
        if (
            c === "\n" ||
            c === "\r" ||
            c === "§" ||
            (id !== "minecraft:space" && !supportedCharacter(c))
        ) {
            skipped++;
            continue;
        }
        if (g.some((v) => !Number.isInteger(v)) || Math.abs(g[0]) > 1000000000)
            throw Error(`Unsupported glyph advance in ${id}`);
        if (
            id === "minecraft:default" &&
            JSON.stringify(font("minecraft:uniform").get(c)) ===
                JSON.stringify(g)
        )
            continue;
        if (g[0] < -268435456 || g[0] > 268435455 || g[1] > 3)
            throw Error("Unsupported packed advance");
        // Pack half-pixel advance, bold offset, and UTF-16 length into one int.
        chunk[c] = g[0] * 8 + g[1] * 2 + g[2] - 1;
        n++;
        count++;
        if (n === 4096) emit();
    }
    emit();
}
// Write only after every font and packed advance has been validated.
const body = lines.join("\n") + "\n",
    hash = crypto.createHash("sha256").update(body).digest("hex");
fs.mkdirSync(path.join(output, "core"), { recursive: true });
fs.writeFileSync(path.join(output, "core", "tables.mcfunction"), body);
fs.writeFileSync(
    path.join(output, "core", "load.mcfunction"),
    `#> lib:text/core/load\n# Generated by scripts/text/generate_widths.cjs\n# @within function core:load_once\n\n# 版が変わった場合だけ文字幅表を更新する\n    execute if data storage lib:text_fonts {Version:"${hash}"} run return 1\n    function lib:text/core/tables\n    data modify storage lib:text_fonts Version set value "${hash}"\n`,
);
console.log(
    JSON.stringify({
        fonts: ids.size,
        glyphs: count,
        unsupported: skipped,
        bytes: Buffer.byteLength(body),
        version: hash,
    }),
);
