#> asset:mob/0049.ice_obstructor/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0049.ice_obstructor/hurt/1.trigger

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.2 1.3 0
    particle block ice ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a