#> api:damage/core/trigger_events/non-player/attack_and_hurt/
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/non-player/

#> Declare
# @within function api:damage/core/trigger_events/non-player/attack_and_hurt/*
    #declare score_holder $DamagerUUID

# Mob にイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].ElementType set from storage api: Argument.ElementType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Metadata set from storage api: Argument.Metadata

# プレイヤー側から行う処理
    scoreboard players operation $DamagerUUID Temporary = @s MobUUID
    execute as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/trigger_events/non-player/attack_and_hurt/push_from_attacker
    scoreboard players reset $DamagerUUID Temporary
