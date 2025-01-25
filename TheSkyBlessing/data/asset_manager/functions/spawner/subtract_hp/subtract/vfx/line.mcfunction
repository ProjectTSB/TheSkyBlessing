#> asset_manager:spawner/subtract_hp/subtract/vfx/line
#
#
#
# @within function
#   asset_manager:spawner/subtract_hp/subtract/
#   asset_manager:spawner/subtract_hp/subtract/vfx/line

particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless entity @s[distance=..1] positioned ^ ^ ^0.4 run function asset_manager:spawner/subtract_hp/subtract/vfx/line
