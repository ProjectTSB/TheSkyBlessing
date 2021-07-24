#> asset:mob/0058.divide_haze/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0058.divide_haze/tick/1.trigger

particle dust 3 2 0.01 1 ~ ~1 ~ 0.5 0.5 0.5 1 8 normal @a
effect give @a[distance=..1.2] wither 1 2 false
execute if entity @e[] players add @s Temporary 1