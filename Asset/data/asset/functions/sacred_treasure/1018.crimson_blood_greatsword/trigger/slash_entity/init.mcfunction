#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/init
#
# Init処理
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/active_main

# 向きを揃える
    execute as @p[tag=this] run function api:data_get/rotation
    data modify entity @s Rotation set from storage api: Rotation

# 向き
    execute store result score @s Temporary run data get storage api: Rotation[1] 100
    execute store result entity @s Pose.RightArm[2] float -0.01 run scoreboard players remove @s Temporary 9000

# タグ削除
    tag @s remove SA.SlashEntityInit
    scoreboard players reset @s Temporary