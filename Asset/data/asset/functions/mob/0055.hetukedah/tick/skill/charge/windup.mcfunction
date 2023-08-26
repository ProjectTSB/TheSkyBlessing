#> asset:mob/0055.hetukedah/tick/skill/charge/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/charge/tick

# 演出
    particle minecraft:dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 75 force @a[distance=..30]
    particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 0 25 force @a[distance=..30]
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# NoAIにする
    data merge entity @s {NoAI:1b}