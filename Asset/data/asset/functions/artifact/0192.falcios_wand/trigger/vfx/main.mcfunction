#> asset:artifact/0192.falcios_wand/trigger/vfx/main
#
#
#
# @within function asset:artifact/0192.falcios_wand/trigger/vfx/*

tp @s ~ ~ ~ ~0.75 0

scoreboard players add @s 5C.Age 1
execute if score @s 5C.Age matches 1 at @s run function asset:artifact/0192.falcios_wand/trigger/vfx/particle
execute if score @s 5C.Age matches 3 at @s run function asset:artifact/0192.falcios_wand/trigger/vfx/particle
execute if score @s 5C.Age matches 3.. run kill @s