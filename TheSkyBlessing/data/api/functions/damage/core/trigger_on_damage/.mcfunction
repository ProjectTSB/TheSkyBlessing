#> api:damage/core/trigger_on_damage/
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/player/

# MOB特定
    execute as @e[type=!player,distance=..150] if score @s MobUUID = $LatestModifiedEntity MobUUID run tag @s add TargetAttacker
# トリガー
    tag @s add TriggerFlag.Damage
    advancement grant @s only asset_manager:artifact/damage/from_entity/
# MOBからする処理
    execute as @e[type=!player,tag=TargetAttacker,distance=..150] run function api:damage/core/trigger_on_damage/as_attacker