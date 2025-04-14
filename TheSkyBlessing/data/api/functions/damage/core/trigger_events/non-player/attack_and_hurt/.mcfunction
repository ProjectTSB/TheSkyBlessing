#> api:damage/core/trigger_events/non-player/attack_and_hurt/
#
# attackトリガー用の進捗を手動でトリガーします
#
# @within function api:damage/core/health_subtract/non-player/add_event

#> Declare
# @within function api:damage/core/trigger_events/non-player/attack_and_hurt/*
    #declare score_holder $DamagerUUID

# Mob の UUID を記録しておく
    scoreboard players operation $DamagerUUID Temporary = @s MobUUID
# Hurt イベントの push
    execute if entity @s[tag=!ExtendedCollision] run function api:damage/core/trigger_events/non-player/attack_and_hurt/hurt
# Attack イベントの push
    execute unless predicate api:mob/has_forward_target as @a if score @s UserID = $LatestModifiedUser UserID run function api:damage/core/trigger_events/non-player/attack_and_hurt/attack
# リセット
    scoreboard players reset $DamagerUUID Temporary
