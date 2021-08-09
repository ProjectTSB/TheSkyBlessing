#> asset:mob/0078.messenger_of_thunder/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1.trigger

# 演出
    particle dust 1 1 0 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a
    particle dust 0.3 0.3 0.3 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a

# スコア類
    scoreboard players add @s 26.Tick 1
    scoreboard players add @s 26.AccelCount 1

    # 雷発射のスコア
        execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=10..20] unless score @s 26.FarCount matches 100.. run scoreboard players add @s 26.FarCount 1
        execute if score @s 26.FarCount matches 100.. run scoreboard players add @s 26.FarCount 1

# 一定周期ごとに雷雲を召喚
    execute if score @s 26.Tick matches 70.. run function asset:mob/0078.messenger_of_thunder/tick/3.thundercloud

# speedを得る
    execute if score @s 26.AccelCount matches 400.. run function asset:mob/0078.messenger_of_thunder/tick/4.accel

# 雷を前方に3回発射
    execute if score @s 26.FarCount matches 101 run function asset:mob/0078.messenger_of_thunder/tick/5.lightning_wait
    execute unless score @s[scores={26.FarCount=1..}] 26.FarCount matches ..119 unless score @s 26.FarCount matches 121 unless score @s 26.FarCount matches 123 run function asset:mob/0078.messenger_of_thunder/tick/6.lightning
