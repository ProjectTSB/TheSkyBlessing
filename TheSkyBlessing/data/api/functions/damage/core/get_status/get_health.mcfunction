#> api:damage/core/get_status/get_health
# @within function api:damage/core/get_status/

execute store result score $Health Temporary run scoreboard players get @s MobHealth
