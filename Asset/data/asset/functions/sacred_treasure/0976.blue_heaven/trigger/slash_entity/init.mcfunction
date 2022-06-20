#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/init
#
# Init処理
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/3.main

# ID付与
    scoreboard players operation @s R4.UserID = @p[tag=this] UserID

# 向きを揃える
    data modify entity @s Rotation[] set from entity @p[tag=this] Rotation[]

# 向き
    execute store result score @s Temporary run data get entity @p[tag=this] Rotation[1] 1
    execute store result entity @s Pose.RightArm[2] float -1 run scoreboard players remove @s Temporary 90

# タグ削除
    tag @s remove R4.SlashInit
    scoreboard players reset @s Temporary