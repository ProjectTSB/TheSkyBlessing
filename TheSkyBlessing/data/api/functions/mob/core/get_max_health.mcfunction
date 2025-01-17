#> api:mob/core/get_max_health
#
#
#
# @within function api:mob/get_max_health

execute store result storage api: Return.MaxHealth float 0.01 run scoreboard players get @s MobHealthMax
