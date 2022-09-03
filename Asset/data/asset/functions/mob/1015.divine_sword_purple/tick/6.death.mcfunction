#> asset:mob/1015.divine_sword_purple/tick/6.death
#
#
#
# @within function asset:mob/1015.divine_sword_purple/tick/2.tick


# 演出
    particle minecraft:reverse_portal ~ ~1.5 ~ 0.2 0.5 0.2 0.1 50
    particle minecraft:block purple_stained_glass ~ ~1.5 ~ 0.2 0.5 0.2 0.1 25
    playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1.5 1.2
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1.5 0.7

# キル
    kill @s