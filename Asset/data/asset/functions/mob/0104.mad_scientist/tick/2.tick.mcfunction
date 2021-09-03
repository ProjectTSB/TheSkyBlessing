#> asset:mob/0104.mad_scientist/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0104.mad_scientist/tick/1.trigger

# スコア 100以上になるとこのコマンドは停止
    execute unless score @s 2W.Tick matches 100.. run scoreboard players add @s 2W.Tick 1

# スコアが100以上で実行するやつら
    execute if score @s 2W.Tick matches 100.. run function asset:mob/0104.mad_scientist/tick/3.till_throw_potion