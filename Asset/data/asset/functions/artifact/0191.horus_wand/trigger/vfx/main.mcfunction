#> asset:artifact/0191.horus_wand/trigger/vfx/main
#
#
#
# @within function asset:artifact/0191.horus_wand/trigger/vfx/*

tp @s ~ ~ ~ ~0.75 0

scoreboard players add @s 5B.Age 1
execute if score @s 5B.Age matches 1 at @s run function asset:artifact/0191.horus_wand/trigger/vfx/particle
execute if score @s 5B.Age matches 3 at @s run function asset:artifact/0191.horus_wand/trigger/vfx/particle
execute if score @s 5B.Age matches 3.. run kill @s