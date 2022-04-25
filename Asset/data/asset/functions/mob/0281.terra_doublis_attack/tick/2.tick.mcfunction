#> asset:mob/0281.terra_doublis_attack/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0281.terra_doublis_attack/tick/1.trigger

# 回転
    scoreboard players add @s 7T.Spin 1
    execute if entity @s[scores={7T.Spin=4}] run playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.5 0.75
    execute if entity @s[scores={7T.Spin=4}] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1.25
    scoreboard players reset @s[scores={7T.Spin=4..}] 7T.Spin

# スコアID使って対象を特定
    execute at @a if score @s 7T.Owner = @p UserID run tag @p add 7T.This

# 持ち主にTP
    execute at @p[tag=7T.This] positioned ^ ^ ^1.2 run tp @s ~ ~ ~
    execute as @p[tag=7T.This] run function api:data_get/rotation
    execute store result entity @s Pose.Head[1] float 1 run data get storage api: Rotation[0]
    execute store result entity @s Pose.Head[0] float 1 run data get storage api: Rotation[1]

# 射撃攻撃
    scoreboard players add @s 5U.Burst 1
    scoreboard players reset @s[scores={5U.Burst=2,7T.Life=10..}] 5U.Burst
    execute if entity @s[scores={5U.Burst=1}] anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/0210.terra_blade/trigger/event/summon_shot

# タグ削除
    tag @p[tag=7T.This] remove 7T.This

# 消える
    scoreboard players remove @s 7T.Life 1
    kill @s[scores={7T.Life=..0}]