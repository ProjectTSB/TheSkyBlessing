#> asset:mob/0233.honey_flyer/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0233.honey_flyer/tick/1.trigger

# スコア付与
    scoreboard players add @s 6H.Tick 1

# 周囲にプレイヤーがいる時、60tickに一度実行する
    execute if score @s 6H.Tick matches 60.. if entity @a[gamemode=!spectator,distance=..40] run function asset:mob/0233.honey_flyer/tick/3.motion