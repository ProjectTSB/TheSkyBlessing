#!/usr/bin/env python3
"""Fetch pinned Minecraft 1.20.4 inputs; see scripts/text/README.md for usage."""

import argparse
import hashlib
import io
import json
import urllib.request
import zipfile
from pathlib import Path

FILES = {
    "client.jar": (
        "fd19469fed4a4b4c15b2d5133985f0e3e7816a8a",
        "https://piston-data.mojang.com/v1/objects/fd19469fed4a4b4c15b2d5133985f0e3e7816a8a/client.jar",
    ),
    "minecraft/font/include/unifont.json": (
        "f8d4768707b20359f2f7660346bd3a84b6ee27b1",
        "https://resources.download.minecraft.net/f8/f8d4768707b20359f2f7660346bd3a84b6ee27b1",
    ),
    "minecraft/font/unifont.zip": (
        "109663114d0099c48a703626c8462e07d802e08b",
        "https://resources.download.minecraft.net/10/109663114d0099c48a703626c8462e07d802e08b",
    ),
}
ASSET_PREFIXES = (
    "assets/minecraft/font/",
    "assets/minecraft/textures/font/",
    "assets/minecraft/textures/gui/sprites/boss_bar/",
)

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("output", type=Path)
args = parser.parse_args()

# Validate all downloads and cached inputs before writing to the output directory.
inputs = {}
for name, (sha, url) in FILES.items():
    target = args.output / name
    if target.exists():
        data = target.read_bytes()
    else:
        with urllib.request.urlopen(url) as response:
            data = response.read()
    if hashlib.sha1(data).hexdigest() != sha:
        raise ValueError(f"Hash mismatch: {name}")
    inputs[name] = data

# Asset-index files replace placeholders shipped in the client jar.
with zipfile.ZipFile(io.BytesIO(inputs["client.jar"])) as archive:
    for info in archive.infolist():
        if info.is_dir() or not info.filename.startswith(ASSET_PREFIXES):
            continue
        relative = Path(info.filename).relative_to("assets")
        if relative.as_posix() not in FILES:
            inputs[relative.as_posix()] = archive.read(info)

for name, data in inputs.items():
    target = args.output / name
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(data)

(args.output / "sources.json").write_text(json.dumps(FILES, indent=2) + "\n")
print(args.output.resolve())
