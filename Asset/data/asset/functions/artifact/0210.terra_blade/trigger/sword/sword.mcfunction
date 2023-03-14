#> asset:artifact/0210.terra_blade/trigger/sword/sword
#
#
#
# @within function asset:artifact/0210.terra_blade/trigger/sword/sword_schedule

#> Private
# @private
    #declare score_holder $4tInterval

# 4tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $4tInterval Temporary = @s 5U.Life
# 4tickおきに実行
    scoreboard players operation $4tInterval Temporary %= $4 Const
    execute if score $4tInterval Temporary matches 0 run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.75
    execute if score $4tInterval Temporary matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.25
# リセット
    scoreboard players reset $4tInterval

# スコアID使って対象を特定
    execute at @a if score @s 5U.Owner = @p UserID run tag @p add 5U.This

# 持ち主にTP
    execute at @p[tag=5U.This] positioned ^ ^ ^1.2 run tp @s ~ ~ ~
    execute as @p[tag=5U.This] run function api:data_get/rotation
    execute store result entity @s Pose.Head[1] float 1 run data get storage api: Rotation[0]
    execute store result entity @s Pose.Head[0] float 1 run data get storage api: Rotation[1]

# 射撃攻撃
    scoreboard players add @s 5U.Burst 1
    scoreboard players reset @s[scores={5U.Burst=2,5U.Life=10..}] 5U.Burst
    execute if entity @s[scores={5U.Burst=1}] anchored eyes positioned ^ ^ ^ run function asset:artifact/0210.terra_blade/trigger/event/summon_shot

# タグ削除
    tag @p[tag=5U.This] remove 5U.This

# 消える
    scoreboard players remove @s 5U.Life 1
    kill @s[scores={5U.Life=..0}]