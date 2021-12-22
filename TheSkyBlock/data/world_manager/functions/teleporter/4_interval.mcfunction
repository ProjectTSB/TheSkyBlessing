#> world_manager:teleporter/4_interval
#
#
#
# @within function core:tick/4_interval

execute as @e[type=marker,tag=Teleporter] at @s if entity @p[distance=..50] run tp @s ~ ~ ~ ~4 ~
execute as @e[type=marker,tag=Teleporter] at @s if entity @p[distance=..50] positioned ~ ~0.05 ~ run function world_manager:teleporter/vfx/teleporter