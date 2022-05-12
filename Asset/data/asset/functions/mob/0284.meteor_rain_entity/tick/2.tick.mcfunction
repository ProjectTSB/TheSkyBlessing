#> asset:mob/0284.meteor_rain_entity/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0284.meteor_rain_entity/tick/1.trigger

# パーティクル
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 0.2 0 0.2 0 2
    particle large_smoke ~ ~ ~ 0.2 0 0.2 0 3
    particle dust 1 0.5 0 2 ~ ~ ~ 0.7 0.7 0.7 0 2
    particle dust 1 0.1 0.1 2 ~ ~ ~ 0.7 0.7 0.7 0 2

# 着弾
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/1011.meteor/tick/3.landing

# 落下する
    tp @s ~ ~-1 ~