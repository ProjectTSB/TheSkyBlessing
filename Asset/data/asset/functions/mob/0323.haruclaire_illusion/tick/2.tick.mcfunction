#> asset:mob/0323.haruclaire_illusion/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0323.haruclaire_illusion/tick/1.trigger

# タイマー増加
    scoreboard players add @s 8Z.AnimationTimer 1

# 初期化
    execute if score @s 8Z.AnimationTimer matches 1 run function asset:mob/0323.haruclaire_illusion/tick/init

# 消去
    execute if score @s 8Z.AnimationTimer matches 6.. run function asset:mob/0323.haruclaire_illusion/tick/kill
