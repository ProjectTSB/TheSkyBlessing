#> asset:mob/0304.crystal_bullet/tick/reflection
#
#
#
# @within function asset:mob/0304.crystal_bullet/tick/wall_hit

# 反射する。こまさんありがとーー
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ positioned as @s positioned ^ ^ ^0.25 rotated as @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
    execute at @s positioned ^ ^ ^0.25 rotated ~180 ~ positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned ~ ~ 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ positioned as @s positioned ^ ^ ^0.25 rotated as @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned ~ ~ 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~