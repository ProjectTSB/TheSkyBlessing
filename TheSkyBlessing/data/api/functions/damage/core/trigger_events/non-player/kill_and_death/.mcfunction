#> api:damage/core/trigger_events/non-player/kill_and_death/
#
#
#
# @within function api:damage/core/health_subtract/non-player/

#> Declare
# @within function api:damage/core/trigger_events/non-player/kill_and_death/*
    #declare score_holder $DamagerUUID

# Death イベントの push
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:damage/core/trigger_events/non-player/kill_and_death/death",IsForwardedOnly:true}
# Kill イベントの push
    scoreboard players operation $DamagerUUID Temporary = @s MobUUID
    execute as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/trigger_events/non-player/kill_and_death/kill
    scoreboard players reset $DamagerUUID Temporary
