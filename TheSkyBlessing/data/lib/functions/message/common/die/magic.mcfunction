#> lib:message/common/die/magic
#
#
#
# @within function lib:score_to_health_wrapper/core/show_common_death_message

#> Random
# @private
#declare score_holder $Random

execute store result score $Random Temporary run random value 0..2

execute if score $Random Temporary matches 0 run tellraw @a [{"translate": "%1$sは%2$sによって跡形もなく消し飛ばされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 1 run tellraw @a [{"translate": "%1$sは%2$sの魔力に飲まれ死んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 2 run tellraw @a [{"translate": "%1$sは%2$sの魔力衝撃によって幽体離脱を経験した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]

scoreboard players reset $Random Temporary
