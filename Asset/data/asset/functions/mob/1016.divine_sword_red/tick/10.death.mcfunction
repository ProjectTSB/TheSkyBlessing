#> asset:mob/1016.divine_sword_red/tick/10.death
#
#
#
# @within function asset:mob/1016.divine_sword_red/tick/2.tick

# 演出
    particle minecraft:block red_stained_glass ~ ~1.5 ~ 0.2 0.5 0.2 0.1 25
    playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 1.2
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.7

# キル
    kill @s