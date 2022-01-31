#> asset:mob/0244.ignition_spider/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0244.ignition_spider/death/1.trigger

# 演出
    particle flame ~ ~ ~ 0.5 0.5 0.5 0 60 normal @a
    playsound block.fire.ambient hostile @a ~ ~ ~ 2 0.4 0