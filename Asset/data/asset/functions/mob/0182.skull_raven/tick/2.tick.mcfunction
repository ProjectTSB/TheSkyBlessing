#> asset:mob/0182.skull_raven/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0182.skull_raven/tick/1.trigger

# スコア付与
    scoreboard players add @s 52.Tick 1

# 周囲にプレイヤーがいる時、50tickに一度実行する
    execute if score @s 52.Tick matches 50.. if entity @a[gamemode=!spectator,distance=..60] run function asset:mob/0182.skull_raven/tick/3.motion