#> asset:mob/0059.jack_o_lantern/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/1.trigger

# 発光状態
execute if score @s 1N.Surprise matches 8.. run function asset:mob/0059.jack_o_lantern/tick/3.glowing
