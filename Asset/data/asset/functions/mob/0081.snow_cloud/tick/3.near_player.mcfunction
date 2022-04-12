#> asset:mob/0081.snow_cloud/tick/3.near_player
#
#
#
# @within function asset:mob/0081.snow_cloud/tick/2.tick

# スコア蓄積
    scoreboard players add @s 29.SnowTick 1

# 雪が降る演出
    execute at @s run particle snowflake ~ ~2 ~ 0.75 2.5 0.75 0 3 normal @a