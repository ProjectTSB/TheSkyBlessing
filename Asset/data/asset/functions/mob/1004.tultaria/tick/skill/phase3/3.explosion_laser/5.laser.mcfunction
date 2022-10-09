#> asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/5.laser
#
# 再帰レーザー
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/4.shoot
#   asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/5.laser

# パーチクル
    particle dust 1 0 1 0.7 ~ ~ ~ 0 0 0 0 0 force @a[distance=..30]

# 目の前にずらして再帰
    execute if block ~ ~ ~ #lib:no_collision if entity @s[distance=..30] positioned ^ ^ ^0.5 run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/5.laser