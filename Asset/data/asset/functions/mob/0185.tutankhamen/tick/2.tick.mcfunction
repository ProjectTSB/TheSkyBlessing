#> asset:mob/0185.tutankhamen/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0185.tutankhamen/tick/1.trigger

# スコア
    scoreboard players add @s 55.Tick 1

# 技
    execute if score @s 55.Tick matches 100.. run