#> api:damage/core/trigger_events/non-player/attack_and_hurt/
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/non-player/

#> Declare
# @within function api:damage/core/trigger_events/non-player/attack_and_hurt/*
    #declare score_holder $DamagerUUID

# Hurt イベントの push
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:damage/core/trigger_events/non-player/attack_and_hurt/hurt",IsForwardedOnly:false}
# Attack イベントの push
    scoreboard players operation $DamagerUUID Temporary = @s MobUUID
    execute as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/trigger_events/non-player/attack_and_hurt/attack
    scoreboard players reset $DamagerUUID Temporary
