#> lib:message/common/die/water
#
#
#
# @within function lib:score_to_health_wrapper/core/show_common_death_message

#> Random
# @private
#declare score_holder $Random

execute store result score $Random Temporary run random value 0..2

execute if score $Random Temporary matches 0 run tellraw @a [{"translate": "%1$sは%2$sによって真っ青になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 1 run tellraw @a [{"translate": "%1$sは%2$sによって冷たくなった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 2 run tellraw @a [{"translate": "%2$sによって%1$sはふやけてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]

scoreboard players reset $Random Temporary
