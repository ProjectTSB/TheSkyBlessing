#> api:damage/core/trigger_events/non-player/kill_and_death/
#
#
#
# @within function api:damage/core/health_subtract/non-player/kill

#> Declare
# @within function api:damage/core/trigger_events/non-player/kill_and_death/*
    #declare score_holder $DamagerUUID

# Mob にイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].ElementType set from storage api: Argument.ElementType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].Metadata set from storage api: Argument.Metadata

# プレイヤー側から行う処理
    scoreboard players operation $DamagerUUID Temporary = @s MobUUID
    execute as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/trigger_events/non-player/kill_and_death/push_from_attacker
    scoreboard players reset $DamagerUUID Temporary
