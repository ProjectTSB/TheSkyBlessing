#> asset:mob/0059.none_fighter_bow/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0059.none_fighter_bow/death/1.trigger

# 演出
    particle minecraft:block white_concrete ~ ~1.2 ~ 0.2 0.5 0.2 0 30 normal @a
    playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.5 0
