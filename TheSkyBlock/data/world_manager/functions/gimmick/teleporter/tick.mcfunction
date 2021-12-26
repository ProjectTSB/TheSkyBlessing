#> world_manager:gimmick/teleporter/tick
#
#
#
# @within function world_manager:gimmick/

execute as @e[type=marker,tag=Teleporter] at @s if entity @p[distance=..50] run tp @s ~ ~ ~ ~2 ~
execute as @e[type=marker,tag=Teleporter] at @s if entity @p[distance=..50] positioned ~ ~0.05 ~ run function world_manager:gimmick/teleporter/vfx/teleporter/