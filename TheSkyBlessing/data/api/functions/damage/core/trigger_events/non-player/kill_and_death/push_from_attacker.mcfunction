#> api:damage/core/trigger_events/non-player/kill_and_death/push_from_attacker
#
#
#
# @within function api:damage/core/trigger_events/non-player/kill_and_death/

# Mob にイベントを追加する
    execute unless predicate api:mob/has_forward_target store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].From int 1 run scoreboard players get @s UserID
# プレイヤーへのイベント追加を打ち切る
    execute if data storage api: Argument{ApplyTrigger:false} run return fail
# プレイヤーにイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].To int 1 run scoreboard players get $DamagerUUID Temporary
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].ElementType set from storage api: Argument.ElementType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].Metadata set from storage api: Argument.Metadata
