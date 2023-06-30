#> asset:mob/0314.blazing_bomb/tick/event/fireball/move
#
#
#
# @within function asset:mob/0314.blazing_bomb/tick/event/fireball/

# パーティクル
    particle minecraft:entity_effect ~ ~ ~ 1 0.5 0 1 0
    particle minecraft:smoke ~ ~ ~ 0.3 0.3 0.3 0.002 1
    particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.002 1

# 速度はその時その時で変わる
    tp @s ^ ^ ^0.25 ~ ~