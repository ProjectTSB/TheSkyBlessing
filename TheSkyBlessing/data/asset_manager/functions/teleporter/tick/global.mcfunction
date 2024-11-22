#> asset_manager:teleporter/tick/global
#
#
#
# @within function core:tick/

execute as @e[type=item_display,tag=Teleporter] at @s if entity @p[distance=..50] run function asset_manager:teleporter/tick/vfx/teleporter/
