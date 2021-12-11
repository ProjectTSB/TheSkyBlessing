#> asset:mob/0131.haruclaire/death/6.freeze
#
#
#
# @within function asset:mob/0131.haruclaire/death/4.animation_main

# 置き換え
    item replace entity @s armor.head with stick{CustomModelData:20062}
# 演出
    particle minecraft:dust 0.569 0.957 1 1 ~ ~ ~ 0.8 0.8 0.8 0.1 120 normal @a
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0

