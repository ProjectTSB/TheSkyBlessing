#> asset:artifact/0976.brave_sword/trigger/slash_shot/init
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/combo/slash3

# ID付与
    scoreboard players operation @s R4.UserID = @p[tag=this] UserID

# 角度
    execute store result entity @s Pose.Head[0] float 1 run data get entity @p[tag=this] Rotation[1]

# 向きを揃える
    execute at @p[tag=this] run tp @s ~ ~ ~ ~ ~

# タグ削除
    tag @s remove R4.SlashShotInit