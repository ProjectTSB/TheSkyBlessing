#> asset:mob/0075.watermelon/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0075.watermelon/tick/1.trigger

# 前方へ行く処理
    tp @s ^ ^ ^1 ~ ~1

# 演出
    particle dust 0.173 1 0.243 1 ~ ~1.6 ~ 0.4 0.4 0.4 0 2 normal @a

# タイムリミットスコア
    scoreboard players add @s 23.Tick 1

# 炸裂
    execute if score @s 23.Tick matches 20.. run function asset:mob/0075.watermelon/tick/3.explosion
    execute if block ~ ~ ~ #lib:air if entity @a[gamemode=!spectator,distance=..1.5] run function asset:mob/0075.watermelon/tick/3.explosion
    execute unless block ^ ^1 ^1 #lib:no_collision run function asset:mob/0075.watermelon/tick/3.explosion
