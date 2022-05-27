#> asset_manager:teleporter/tick/vfx/star/
#
#
#
# @within function asset_manager:teleporter/tick/active

execute if entity @s[tag=TPStarGreen] run function asset_manager:teleporter/tick/vfx/star/green
execute if entity @s[tag=!TPStarGreen] run function asset_manager:teleporter/tick/vfx/star/white