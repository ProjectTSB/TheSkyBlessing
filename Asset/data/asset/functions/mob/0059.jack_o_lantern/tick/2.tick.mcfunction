#> asset:mob/0059.jack_o_lantern/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.trigger

# 演出
    particle dust 1 0.6 0 1 ~ ~2 ~ 4 1.5 4 0 2 normal @a
    particle dust 0.851 0 1 1 ~ ~2 ~ 4 1.5 4 0 2 normal @a
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=3..15] run scoreboard players add @s 1N.Tick 1
    execute if score @s 1N.Tick matches 60.. run function asset:mob/0059.jack_o_lantern/tick/3.tick_sound

# 発光状態
    execute if score @s 1N.Surprise matches 8.. run function asset:mob/0059.jack_o_lantern/tick/4.manage_glowing
