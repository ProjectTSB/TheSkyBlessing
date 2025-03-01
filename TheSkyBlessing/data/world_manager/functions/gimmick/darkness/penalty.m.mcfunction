#> world_manager:gimmick/darkness/penalty.m
#
#
#
# @input args
#   X : int
#   Y : int
#   Z : int
# @within function world_manager:gimmick/darkness/do

$execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~$(X) ~$(Y) ~$(Z) positioned ~ ~-1.5 ~ run function world_manager:gimmick/darkness/penalty/
scoreboard players remove @s DarknessAnxiety 100
