#> asset:artifact/0192.falcios_wand/trigger/vfx/task
#
#
#
# @within function asset:artifact/0192.falcios_wand/trigger/vfx/*

execute as @e[type=marker,tag=5C.VFX] at @s run function asset:artifact/0192.falcios_wand/trigger/vfx/main

execute if entity @e[type=marker,tag=5C.VFX,limit=1] run schedule function asset:artifact/0192.falcios_wand/trigger/vfx/task 1t