#> api:damage/core/health_subtract/non-player/add_event
#
#
#
# @within function api:damage/core/health_subtract/non-player/

execute if data storage api: Argument{ApplyTrigger:true} run function api:damage/core/trigger_events/non-player/attack_and_hurt/
execute if score $Health Temporary matches ..0 run function api:damage/core/trigger_events/non-player/kill_and_death/
