#> asset:mob/0059.jack_o_lantern/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.trigger

# 演出
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=3..15] scoreboard players add @s 1N.Tick 1
    execute if score @s 1N.Tick matches 60.. run function asset:mob/0059.jack_o_lantern/tick/8.tick_sound

# 発光状態
execute if score @s 1N.Surprise matches 8.. run function asset:mob/0059.jack_o_lantern/tick/3.glowing
