#> asset:mob/0078.messenger_of_thunder/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1.trigger

# 演出
    particle dust 1 1 0 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a
    particle dust 0.3 0.3 0.3 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a

# スコア
    execute if entity @a[gamemode=!spectator,distance=..30] run scoreboard players add @s 26.Tick 1

# 一定周期ごとに雷雲を召喚
    execute if score @s 26.Tick matches 70.. run function asset:mob/0078.messenger_of_thunder/tick/3.thundercloud