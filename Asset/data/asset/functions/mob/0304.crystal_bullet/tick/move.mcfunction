#> asset:mob/0304.crystal_bullet/tick/move
#
#
#
# @within function asset:mob/0304.crystal_bullet/tick/2.tick

# 壁反射
    execute unless block ^ ^ ^0.5 #lib:no_collision run function asset:mob/0304.crystal_bullet/tick/wall_hit
# 演出
    particle electric_spark ~ ~0.55 ~ 0 0 0 0 0
    execute if predicate lib:random_pass_per/5 run particle witch ~ ~0.55 ~ 0 0 0 0.6 1
# 進ませる
    execute at @s run tp @s ^ ^ ^0.25 ~ ~