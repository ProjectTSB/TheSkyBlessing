#> asset_manager:island/dispel/boss/watcher
#
#
#
# @within function asset_manager:island/tick/

#> Private
# @private
    #declare tag Target

# 判別用タグ
    tag @s add this
    execute as @e[tag=Enemy.Boss] if score @s MobUUID = @e[type=armor_stand,tag=this,distance=..0.01,limit=1] TargetBossID run tag @s add Target
# 殺されてるなら解呪可能にする
    execute unless entity @e[tag=Target,limit=1] as @e[type=armor_stand,tag=this,distance=..0.01,limit=1] run function asset_manager:island/dispel/boss/killed
# BOSSが100m以上離れた場合は戻る
    execute unless entity @e[tag=Target,distance=..100,limit=1] as @e[tag=Target,distance=100..,limit=1] run tp @s ~ ~ ~
# BOSSの60m以内にプレイヤーが存在しなければさよならする
    execute as @e[tag=Target,distance=..100,limit=1] at @s unless entity @p[tag=!Death,distance=..60] run function asset_manager:island/dispel/boss/remove
# リセット
    tag @s remove this
    tag @e[tag=Target] remove Target