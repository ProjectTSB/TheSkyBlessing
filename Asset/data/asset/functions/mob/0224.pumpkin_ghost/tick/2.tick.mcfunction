#> asset:mob/0224.pumpkin_ghost/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0224.pumpkin_ghost/tick/1.trigger

# 頭をつける
    execute if entity @s[tag=!68.Init] run function asset:mob/0224.pumpkin_ghost/tick/3.head_random

# 演出
    particle dust 1 0.6 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal @a
    particle dust 0.851 0 1 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal @a

