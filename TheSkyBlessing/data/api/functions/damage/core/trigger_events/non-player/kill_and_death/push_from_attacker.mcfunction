#> api:damage/core/trigger_events/non-player/kill_and_death/push_from_attacker
#
#
#
# @within function api:damage/core/trigger_events/non-player/kill_and_death/

# 神器側で攻撃先を軽量に取得できるようにタグを付与しておく
    tag @s add KilledEntity
# Mob にイベントを追加する
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].From int 1 run scoreboard players get @s UserID
# プレイヤーにイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].To int 1 run scoreboard players get $DamagerUUID Temporary
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].ElementType set from storage api: Argument.ElementType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].Metadata set from storage api: Argument.Metadata
