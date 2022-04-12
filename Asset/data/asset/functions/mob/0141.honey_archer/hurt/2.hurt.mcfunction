#> asset:mob/0141.honey_archer/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0141.honey_archer/hurt/1.trigger

# 演出
    playsound block.honey_block.hit hostile @a ~ ~ ~ 0.6 1 0
    particle minecraft:block honey_block ~ ~1.2 ~ 0.4 0.4 0.4 0 20
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 20 normal