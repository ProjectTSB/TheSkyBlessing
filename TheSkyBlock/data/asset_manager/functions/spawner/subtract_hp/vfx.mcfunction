#> asset_manager:spawner/subtract_hp/vfx
#
#
#
# @within function
#   asset_manager:spawner/subtract_hp/subtract
#   asset_manager:spawner/subtract_hp/vfx

particle dust 0.5 0.5 0.5 1 ~ ~ ~ 0.05 0.05 0.05 0 2 force
execute unless entity @s[distance=..1.5] positioned ^ ^ ^0.15 run function asset_manager:spawner/subtract_hp/vfx