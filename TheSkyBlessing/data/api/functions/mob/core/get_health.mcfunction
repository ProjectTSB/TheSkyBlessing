#> api:mob/core/get_health
#
#
#
# @within function api:mob/get_health

execute store result storage api: Return.Health float 0.01 run scoreboard players get @s MobHealth
