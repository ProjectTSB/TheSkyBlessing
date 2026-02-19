#> api:mob/core/modify_health
# @within function api:mob/modify_health

#> Private
# @private
#declare score_holder $Delta

execute store result score $Delta Temporary run data get storage api: Argument.Delta 100

scoreboard players operation @s MobHealth += $Delta Temporary

execute unless score @s MobHealth matches 1.. run scoreboard players set @s MobHealth 1
execute unless score @s MobHealth <= @s MobHealthMax run scoreboard players operation @s MobHealth = @s MobHealthMax

scoreboard players reset $Delta Temporary
