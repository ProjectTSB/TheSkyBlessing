#> asset_manager:teleporter/tick/summon_star/summon/tp.m
# @input args
#   X: int
#   Y: int
#   Z: int
# @within function asset_manager:teleporter/tick/summon_star/summon/as_marker

$tp @s $(X) $(Y) $(Z)
execute at @s run tp @s ~0.5 ~ ~0.5
