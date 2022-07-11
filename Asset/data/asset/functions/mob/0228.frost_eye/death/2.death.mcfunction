#> asset:mob/0228.frost_eye/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0228.frost_eye/death/1.trigger

# 演出
    particle block ice ~ ~1.6 ~ 0.3 0.3 0.3 0 50 normal @a
    particle block snow_block ~ ~1.6 ~ 0.3 0.3 0.3 0 50 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 1.2 0