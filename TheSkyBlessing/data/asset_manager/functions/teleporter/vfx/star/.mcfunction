#> asset_manager:teleporter/vfx/star/
#
#
#
# @within function asset_manager:teleporter/active

execute if entity @s[tag=TPStarGreen] run function asset_manager:teleporter/vfx/star/green
execute if entity @s[tag=!TPStarGreen] run function asset_manager:teleporter/vfx/star/white