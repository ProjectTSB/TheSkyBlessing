#> asset:mob/0124.skull_harpy/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0124.skull_harpy/tick/1.trigger

# スコア付与
    scoreboard players add @s 3G.Tick 1

# 周囲にプレイヤーがいる時、80tickに一度実行する
    execute if score @s 3G.Tick matches 80.. if entity @a[gamemode=!spectator,distance=..60] run function asset:mob/0124.skull_harpy/tick/2.1.motion