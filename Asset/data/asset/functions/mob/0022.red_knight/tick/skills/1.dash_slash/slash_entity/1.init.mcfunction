#> asset:mob/0022.red_knight/tick/skills/1.dash_slash/slash_entity/1.init
#
#
#
# @within  asset:mob/0022.red_knight/tick/skills/**

# 向きを揃える
    execute as @e[type=wither_skeleton,scores={MobID=22}] run function api:data_get/rotation
    data modify entity @s Rotation set from storage api: Rotation

# 向き
    #execute store result score @s Temporary run data get storage api: Rotation[1] 100
    execute store result entity @s Pose.RightArm[2] float -0.01 run scoreboard players remove @s Temporary 9000

# タグ削除
    tag @s remove M.SlashInit
    scoreboard players reset @s Temporary