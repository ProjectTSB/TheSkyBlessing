#> asset:mob/0281.terra_doublis_attack/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0281.terra_doublis_attack/tick/1.trigger

# 回転
    #execute store result entity @s Pose.Head[2] float 1 run scoreboard players remove @s 7T.Spin 25
    #scoreboard players set @s[scores={7T.Spin=..-360}] 7T.Spin 1

# スコアID使って対象を特定
    execute at @a if score @s 7T.Owner = @p UserID run tag @p add 7T.This

# 持ち主にTP
    execute at @p[tag=7T.This] positioned ^ ^ ^1.2 run tp @s ~ ~ ~
    execute as @p[tag=7T.This] run function api:data_get/rotation
    execute store result entity @s Pose.Head[1] float 1 run data get storage api: Rotation[0]
    execute store result entity @s Pose.Head[0] float 1 run data get storage api: Rotation[1]

# タグ削除
    tag @p[tag=7T.This] remove 7T.This

# 消える
    scoreboard players remove @s 7T.Life 1
    kill @s[scores={7T.Life=..0}]