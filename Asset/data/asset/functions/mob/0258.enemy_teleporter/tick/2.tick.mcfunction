#> asset:mob/0258.enemy_teleporter/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0258.enemy_teleporter/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 76.Time 1

# テレポートするまえに分岐
    execute if score @s 76.Time matches 20 run function asset:mob/0258.enemy_teleporter/tick/branch

# 演出
    function asset:mob/0258.enemy_teleporter/tick/particle