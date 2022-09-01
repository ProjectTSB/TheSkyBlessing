#> asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser
#
# 再帰ビーム
#
# @within function
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.2.targeting_lay
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser

# パーチクル
    particle minecraft:dust 0.7 0 0 1 ~ ~ ~ 0 0 0 0 0 force

#
    execute if entity @s[distance=..15] positioned ^ ^ ^0.5 run function asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser