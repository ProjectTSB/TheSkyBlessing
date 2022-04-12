#> asset:mob/0059.jack_o_lantern/tick/4.manage_glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/2.tick

# 特殊攻撃状態のスコア
    scoreboard players add @s 1N.Glowing 1

# 発光状態待機
    execute if score @s 1N.Glowing matches 1 run function asset:mob/0059.jack_o_lantern/tick/5.wait_glowing

# 発光状態待機の間のパーティクル(プレイヤーが発見できるように、このときに殴られると2.hurtへ)
    execute if score @s 1N.Glowing matches 1..59 run particle dust 1 0.6 0 1 ~ ~1.6 ~ 0.3 0.3 0.3 0 1 normal @a[distance=..8]

# 発光状態開始
    execute if score @s 1N.Glowing matches 60 run function asset:mob/0059.jack_o_lantern/tick/6.start_glowing

# 発光状態
    execute if score @s 1N.Glowing matches 61.. run function asset:mob/0059.jack_o_lantern/tick/7.glowing

# 発光状態終了
    execute if score @s 1N.Glowing matches 220.. run function asset:mob/0059.jack_o_lantern/tick/8.end_glowing