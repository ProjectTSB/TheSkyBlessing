#> asset:artifact/0190.amor_wand/trigger/vfx/main
#
#
#
# @within function asset:artifact/0190.amor_wand/trigger/vfx/*

tp @s ~ ~ ~ ~0.75 0

scoreboard players add @s 5A.Age 1
execute if score @s 5A.Age matches 1 at @s run function asset:artifact/0190.amor_wand/trigger/vfx/particle
execute if score @s 5A.Age matches 3 at @s run function asset:artifact/0190.amor_wand/trigger/vfx/particle
execute if score @s 5A.Age matches 3.. run kill @s