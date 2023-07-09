#> asset:mob/1011.meteor/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1011.meteor/tick/1.trigger

# 演出
    particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 5

# 落下。たくさん実行して加速させる
    execute at @s run function asset:mob/1011.meteor/tick/3.move
    execute at @s run function asset:mob/1011.meteor/tick/3.move
    execute at @s run function asset:mob/1011.meteor/tick/3.move
    execute at @s run function asset:mob/1011.meteor/tick/3.move

# 壁の衝突判定
    execute at @s unless block ~ ~ ~ #lib:no_collision run function asset:mob/1011.meteor/tick/3.landing
