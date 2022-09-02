#> asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser
#
# 再帰ビーム
#
# @within function
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.2.targeting_lay_narrow
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.2.targeting_lay
#   asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser

# パーチクル
    #particle minecraft:dust 0.7 0 0 0.5 ~ ~ ~ 0 0 0 0 0 force
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 0 force @a[distance=..30]

# 目の前にずらして再帰
    execute if entity @s[distance=..16] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/n_way_bullet/3.3.laser