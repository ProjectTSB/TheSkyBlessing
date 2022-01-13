#> asset:mob/1012.meteor_big/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1012.meteor_big/tick/1.trigger

# 演出
    particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 1 5
    particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 5

# 着弾
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/1012.meteor_big/tick/3.landing

# 落下する
    tp @s ~ ~-0.4 ~