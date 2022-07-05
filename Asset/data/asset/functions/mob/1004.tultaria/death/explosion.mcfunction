#> asset:mob/1004.tultaria/death/explosion
#
#
#
# @within function asset:mob/1004.tultaria/death/4.main

particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 1 force @a[distance=..30]
playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
