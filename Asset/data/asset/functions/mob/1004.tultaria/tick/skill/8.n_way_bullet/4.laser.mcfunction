#> asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.laser
#
# 再帰ビーム
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/3.summon_shot
#   asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.laser

# パーチクル
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 0 force @a[distance=..30]

# 目の前にずらして再帰
    execute if entity @s[distance=..16] positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/4.laser