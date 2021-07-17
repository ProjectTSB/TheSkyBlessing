#> asset:mob/0037.fire_spreader/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0037.fire_spreader/death/1.trigger

# 演出
    particle flame ~ ~1 ~ 0.3 0.4 0.3 0 10 normal @a
    particle smoke ~ ~1 ~ 0.3 0.5 0.3 0 10 normal @a
