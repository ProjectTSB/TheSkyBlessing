#> api:damage/core/trigger_events/non-player/
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/non-player/deal_damage

#> Declare
# @private
    #declare tag TargetAttacker

# プレイヤー特定
    execute as @a if score @s UserID = $LatestModifiedUser UserID run tag @s add TargetAttacker
# 神器側で攻撃先を軽量に取得できるようにタグを付与しておく
    tag @s add DamagedEntity
# プレイヤーにイベントを追加する
    execute as @p[tag=TargetAttacker] run function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].To int 1 run scoreboard players get @s MobUUID
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Damage double 0.01 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].ElementType set from storage api: Argument.ElementType
# Mob にもイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].From int 1 run scoreboard players get @p[tag=TargetAttacker] UserID
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Damage double 0.01 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].ElementType set from storage api: Argument.ElementType
# リセット
    tag @a[tag=TargetAttacker] remove TargetAttacker
