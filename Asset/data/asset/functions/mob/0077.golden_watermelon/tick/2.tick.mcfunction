#> asset:mob/0077.golden_watermelon/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0077.golden_watermelon/tick/1.trigger

# 前方へ行く処理
    execute unless score @s 25.Tick matches 20.. if block ^ ^1.5 ^1 #lib:no_collision if block ^ ^1.6 ^1.5 #lib:no_collision run tp @s ^ ^ ^1.5 ~ ~1.5

# スコア
    scoreboard players add @s 25.Tick 1

# 炸裂
    execute if score @s 25.Tick matches 20 run function asset:mob/0077.golden_watermelon/tick/3.explosion_1
    execute unless score @s 25.Tick matches 20.. if block ~ ~ ~ #lib:no_collision if entity @a[distance=..1.5] run function asset:mob/0077.golden_watermelon/tick/3.explosion_1
    execute unless score @s 25.Tick matches 20.. unless block ^ ^1 ^1 #lib:no_collision run function asset:mob/0077.golden_watermelon/tick/3.explosion_1

# 2段目爆発
    execute if score @s 25.Tick matches 20.. run function asset:mob/0077.golden_watermelon/tick/4.explosion_charge

