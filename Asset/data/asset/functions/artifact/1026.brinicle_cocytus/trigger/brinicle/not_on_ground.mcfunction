#> asset:artifact/1026.brinicle_cocytus/trigger/brinicle/not_on_ground
#
#
#
# @within function asset:artifact/1026.brinicle_cocytus/trigger/brinicle/main

# 移動
    tp @s ^ ^ ^0.2 ~ ~2

# 演出
    playsound block.glass.break neutral @a ~ ~ ~ 0.2 2 0
    playsound block.glass.break neutral @a ~ ~ ~ 0.2 1.4 0
    particle snowflake ~ ~ ~ 0.05 0.05 0.05 0.02 5 normal @a

# 着弾
    execute unless block ~ ~-0.4 ~ #lib:no_collision run tag @s add SI.OnGround