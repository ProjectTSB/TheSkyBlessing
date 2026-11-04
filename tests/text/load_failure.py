"""Emit a load-failure scenario for DevSpace's verification runner as JSON."""
import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
source = root / "TheSkyBlessing/data/lib/functions/text/core/load.mcfunction"
commands = [line.strip() for line in source.read_text().splitlines() if line.startswith("    ")]
# Run the actual initialization commands after the version check, injecting a bad macro argument.
assert commands[0].startswith("execute if data storage lib_text_fonts:")
commands = commands[1:]
assert commands[0].endswith('function lib:text/core/tables.m {_:""}')
commands[0] = commands[0].replace('{_:""}', '{_:"::invalid"}')
steps = [{"name": "Initialize fault checks", "commands": ["scoreboard objectives add TextVerify dummy"], "expect": ["TextVerify"]}]
for name, setup, query, expected in [
    ("Missing version stays absent", "data remove storage lib_text_fonts: Version", "Version", 0),
    ("Old version stays unchanged", 'data modify storage lib_text_fonts: Version set value "previous"', '{Version:"previous"}', 1),
]:
    steps.append({
        "name": name,
        "commands": [setup, *commands,
            f"execute store success score kept TextVerify if data storage lib_text_fonts: {query}",
            "scoreboard players get kept TextVerify",
            "scoreboard players set residue TextVerify 0",
            "execute if score $TextResult Temporary matches -2147483648..2147483647 run scoreboard players set residue TextVerify 1",
            "scoreboard players get residue TextVerify"],
        "expect": [f"kept has {expected}", "residue has 0"],
    })
steps.append({
    "name": "Valid retry loads and records a version",
    "commands": ["function lib:text/core/load",
        "execute store success score loaded TextVerify run data get storage lib_text_fonts: Version",
        "scoreboard players get loaded TextVerify",
        'execute store success score valid TextVerify if data storage lib_text_fonts: Fonts."minecraft:uniform"{A:66}',
        "scoreboard players get valid TextVerify"],
    "expect": ["loaded has 1", "valid has 1"],
})
print(json.dumps({
    "name": "text-load-failure",
    "scope": "Actual initialization commands after the version check, with only the tables macro argument replaced by an invalid resource location. Tests expansion failure and a normal retry; not a corrupt file on disk.",
    "players": [], "steps": steps,
}, indent=2))
