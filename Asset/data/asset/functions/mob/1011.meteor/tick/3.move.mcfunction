#> asset:mob/1011.meteor/tick/3.move
#
#
#
# @within function
#   asset:mob/1011.meteor/tick/2.tick

# パーティクル
    particle dust 0 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 1
    particle dust 0.161 0.204 0.239 1.5 ~ ~ ~ 0.1 0.1 0.1 0 1

# 前進
    tp @s ^ ^ ^0.5 ~ ~

# キル
    execute if entity @s[scores={S3.LifeTime=..0}] run function asset:mob/1011.meteor/tick/3.landing
