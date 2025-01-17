#> api:damage/core/trigger_events/non-player/attack_and_hurt/push_from_attacker
#
#
#
# @within function api:damage/core/trigger_events/non-player/attack_and_hurt/

#> Private
# @private
#declare score_holder $LastIndex

# Mob にイベントを追加する
    execute unless predicate api:mob/has_forward_target store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].From int 1 run scoreboard players get @s UserID
# プレイヤーにイベントを追加する
    function oh_my_dat:please
    # Index が同一 (即ち、同一の modifier 後の対象) ではない場合は、新規に追加する
        execute store result score $LastIndex Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Index
        execute unless score $LastIndex Temporary = $ModifierIndex Global run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack append value {Type: "api",IsVanilla:false}
        execute unless score $LastIndex Temporary = $ModifierIndex Global run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].AttackType set from storage api: Argument.AttackType
        execute unless score $LastIndex Temporary = $ModifierIndex Global run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].ElementType set from storage api: Argument.ElementType
        execute unless score $LastIndex Temporary = $ModifierIndex Global run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Metadata set from storage api: Argument.Metadata
    # 攻撃対象に追加する
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Amounts append value -1d
        execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].Amounts[-1] double 0.01 run scoreboard players get $Damage Temporary
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].To append value -1
        execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Attack[-1].To[-1] int 1 run scoreboard players get $DamagerUUID Temporary

# リセット
    scoreboard players reset $LastIndex Temporary
