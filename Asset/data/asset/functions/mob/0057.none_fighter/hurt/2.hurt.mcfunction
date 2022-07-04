#> asset:mob/0057.none_fighter/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0057.none_fighter/hurt/1.trigger

# 演出
    particle minecraft:block white_concrete ~ ~1.2 ~ 0.8 0.8 0.8 0 20 normal @a
    playsound minecraft:block.stone.break hostile @a ~ ~ ~ 1.5 0.8 0
