#> api:mob/core/get_max_health_multiplier
#
#
#
# @within function api:mob/get_max_health_multiplier

execute store result storage api: Return.MaxHealthMultiplier double 0.1 run scoreboard players get @s MobMaxHealthMultiplier
