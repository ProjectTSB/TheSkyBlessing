#> asset:mob/0150.contamination/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0150.contamination/death/1.trigger

# 演出
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1.7
