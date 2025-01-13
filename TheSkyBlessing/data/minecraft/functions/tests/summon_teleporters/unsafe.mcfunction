#> minecraft:tests/summon_teleporters/unsafe
#
#
#
# @within function api:teleporter/unsafe/register_manual

data modify storage api: Argument.ID set value 1200
data modify storage api: Argument.GroupIDs set value ["island"]
data modify storage api: Argument.ActivationState set value "Activate"
data modify storage api: Argument.Color set value [255,255,255]
data modify storage api: Argument.Dimension set value "minecraft:overworld"
data modify storage api: Argument.Pos set value [1d,2d,3d]
function api:teleporter/unsafe/register_manual
