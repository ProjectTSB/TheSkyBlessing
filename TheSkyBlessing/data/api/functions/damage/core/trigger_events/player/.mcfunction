#> api:damage/core/trigger_events/player/
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/player/

#> Declare
# @within function api:damage/core/trigger_events/player/*
    #declare tag Damager

# プレイヤーにイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Amount double 0.0001 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].ElementType set from storage api: Argument.ElementType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].Metadata set from storage api: Argument.Metadata
# モブ側から行う処理
    tag @s add Damager
    execute as @e[type=!player,distance=..150] if score @s MobUUID = $LatestModifiedEntity MobUUID run function api:damage/core/trigger_events/player/push_from_attacker
    tag @s remove Damager
