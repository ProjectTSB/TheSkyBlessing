#> asset_manager:teleporter/tick
#
#
#
# @within function core:tick/

execute as @e[type=marker,tag=Teleporter] at @s if entity @p[distance=..50] run tp @s ~ ~ ~ ~2 ~
execute as @e[type=marker,tag=Teleporter] at @s if entity @p[distance=..50] positioned ~ ~0.05 ~ run function asset_manager:teleporter/vfx/teleporter/