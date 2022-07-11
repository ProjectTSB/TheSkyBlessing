#> asset:sacred_treasure/0976.brave_sword/trigger/slash_entity/init
#
# Init処理
#
# @within function asset:sacred_treasure/0976.brave_sword/trigger/3.main

# 向きを揃える
    execute as @p[tag=this] run function api:data_get/rotation
    execute store result entity @s Rotation[] float 1 run data get storage api: Rotation

# 向き
    execute store result score @s Temporary run data get entity @p[tag=this] Rotation[1] 1
    execute store result entity @s Pose.RightArm[2] float -1 run scoreboard players remove @s Temporary 90

# タグ削除
    tag @s remove R4.SlashInit
    scoreboard players reset @s Temporary