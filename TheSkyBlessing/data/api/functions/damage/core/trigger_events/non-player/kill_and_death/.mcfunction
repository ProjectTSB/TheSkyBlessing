#> api:damage/core/trigger_events/non-player/kill_and_death/
#
#
#
# @within function api:damage/core/health_subtract/non-player/add_event

#> Declare
# @within function api:damage/core/trigger_events/non-player/kill_and_death/*
    #declare score_holder $DamagerUUID

# Mob にイベントを追加する
    execute unless predicate api:mob/has_forward_target run function oh_my_dat:please
    execute unless predicate api:mob/has_forward_target run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death append value {Type: "api",IsVanilla:false}
    execute unless predicate api:mob/has_forward_target run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
    execute unless predicate api:mob/has_forward_target run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].AttackType set from storage api: Argument.AttackType
    execute unless predicate api:mob/has_forward_target run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].ElementType set from storage api: Argument.ElementType
    execute unless predicate api:mob/has_forward_target run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].Metadata set from storage api: Argument.Metadata

# プレイヤー側から行う処理
    scoreboard players operation $DamagerUUID Temporary = @s MobUUID
    execute unless data storage api: {IsForwarded:true} as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/trigger_events/non-player/kill_and_death/push_from_attacker
    scoreboard players reset $DamagerUUID Temporary
