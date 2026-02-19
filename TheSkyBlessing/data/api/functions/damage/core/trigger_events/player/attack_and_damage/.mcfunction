#> api:damage/core/trigger_events/player/attack_and_damage/
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/player/

#> Declare
# @within function api:damage/core/trigger_events/player/attack_and_damage/*
    #declare score_holder $DamagerUUID

# プレイヤーにイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].ElementType set from storage api: Argument.ElementType
    execute if data storage api: Argument{ApplyTrigger:true} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].IsDoT set value false
    execute if data storage api: Argument{ApplyTrigger:false} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].IsDoT set value true
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Metadata set from storage api: Argument.Metadata

# ApplyTrigger:trueでないならreturn
    execute unless data storage api: Argument{ApplyTrigger:true} run return fail

# モブ側から行う処理
    scoreboard players operation $DamagerUUID Temporary = @s UserID
    execute as @e[type=!player,distance=..150] if score @s MobUUID = $LatestModifiedEntity MobUUID run function api:damage/core/trigger_events/player/attack_and_damage/push_from_attacker
    scoreboard players reset $DamagerUUID Temporary
