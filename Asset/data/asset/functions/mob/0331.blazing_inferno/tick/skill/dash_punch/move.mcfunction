#> asset:mob/0331.blazing_inferno/tick/skill/dash_punch/move
#
#
#
# @within function asset:mob/0331.blazing_inferno/tick/skill/dash_punch/move_stacked

# 高速移動
    tp @s ^ ^ ^0.5

# パーティクル
    execute anchored eyes positioned ^ ^-1 ^3 rotated 0 ~ run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 3 force @a[distance=..60]