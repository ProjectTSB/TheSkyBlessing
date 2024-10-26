#> api:damage/core/trigger_events/player/attack_and_damage/push_from_attacker
#
#
#
# @within function api:damage/core/trigger_events/player/attack_and_damage/

# 神器側で攻撃先を軽量に取得できるようにタグを付与しておく
    tag @s add AttackedEntity
# プレイヤーにイベントを追加する
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Damage[-1].From int 1 run scoreboard players get @s MobUUID
# Mob にもイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack append value {Type: "api",IsVanilla:false}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].To int 1 run scoreboard players get $DamagerUUID Temporary
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].Amount double 0.0001 run scoreboard players get $Damage Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].AttackType set from storage api: Argument.AttackType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].ElementType set from storage api: Argument.ElementType
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Attack[-1].Metadata set from storage api: Argument.Metadata
