#> asset:mob/0191.thunder_magic/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0191.thunder_magic/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 5B.Tick 1
# 発動
    execute if score @s 5B.Tick matches 20 run function asset:mob/0191.thunder_magic/tick/3.attack
# 演出
    execute if score @s 5B.Tick matches ..1 run function asset:mob/0191.thunder_magic/tick/particle