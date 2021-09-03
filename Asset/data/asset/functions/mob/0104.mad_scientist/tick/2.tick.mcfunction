#> asset:mob/0104.mad_scientist/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0104.mad_scientist/tick/1.trigger

# スコア
    scoreboard players add @s 2W.Tick 1

# 最初にまず4つの属性に分岐
    execute if score @s 2W.Tick matches 1 run function asset:mob/0104.mad_scientist/tick/3.random_element_select

# スコアが80以上で実行するやつらをここに入れるコマンド数そこまで増やしたくないのでまとめる
    execute if score @s 2W.Tick matches 80.. run function asset:mob/0104.mad_scientist/tick/4.till_throw_potion