#> asset:mob/0059.jack_o_lantern/tick/4.glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/2.tick

# 特殊攻撃状態のスコア
    scoreboard players add @s 1N.Glowing 1

# 発光状態待機
    execute if score @s 1N.Glowing matches 1 run function asset:mob/0059.jack_o_lantern/tick/5.wait_glowing

# 発光状態待機の間
    execute if score @s 1N.Glowing matches 1..39 run function asset:mob/0059.jack_o_lantern/tick/6.hide_glowing

# 発光状態開始
    execute if score @s 1N.Glowing matches 40 run function asset:mob/0059.jack_o_lantern/tick/7.start_glowing

# 発光状態(1N.Glowing>40の状態)
    execute if score @s 1N.Glowing matches 41.. run function asset:mob/0059.jack_o_lantern/tick/8.glowing_state

# 発光状態終了
    execute if score @s 1N.Glowing matches 200.. run function asset:mob/0059.jack_o_lantern/tick/9.end_glowing