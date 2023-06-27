#> asset:mob/0313.blazing_fireball/tick/move
#
# TP移動する
#
# @within function asset:mob/0313.blazing_fireball/tick/2.tick

# パーティクル
    particle flame ~ ~ ~ 0.1 0.1 0.1 0.005 1
    particle dust 1 0.5 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]

# 前進
    tp @s ^ ^ ^0.25 ~ ~
