#> asset:sacred_treasure/0192.falcios_wand/trigger/vfx/task
#
#
#
# @within function asset:sacred_treasure/0192.falcios_wand/trigger/vfx/*

execute as @e[type=marker,tag=5C.VFX] at @s run function asset:sacred_treasure/0192.falcios_wand/trigger/vfx/main

execute if entity @e[type=marker,tag=5C.VFX,limit=1] run schedule function asset:sacred_treasure/0192.falcios_wand/trigger/vfx/task 1t