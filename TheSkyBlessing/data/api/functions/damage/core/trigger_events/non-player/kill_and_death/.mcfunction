#> api:damage/core/trigger_events/non-player/kill_and_death/
#
#
#
# @within function api:damage/core/health_subtract/non-player/add_event

#> Declare
# @within function api:damage/core/trigger_events/non-player/kill_and_death/*
    #declare score_holder $DamagerUUID

# Mob の UUID を記録しておく
    scoreboard players operation $DamagerUUID Temporary = @s MobUUID
# Death イベントの push
    function api:damage/core/trigger_events/non-player/kill_and_death/death
# Kill イベントの push
    execute unless predicate api:mob/has_forward_target as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/trigger_events/non-player/kill_and_death/kill
# リセット
    scoreboard players reset $DamagerUUID Temporary
