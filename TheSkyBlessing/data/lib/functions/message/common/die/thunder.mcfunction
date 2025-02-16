#> lib:message/common/die/thunder
#
#
#
# @within function lib:score_to_health_wrapper/core/show_common_death_message

#> Random
# @private
#declare score_holder $Random

execute store result score $Random Temporary run function lib:random/
scoreboard players operation $Random Temporary %= $3 Const


execute if score $Random Temporary matches 0 run tellraw @a [{"translate": "%1$sは%2$sによって電撃に撃たれ目の前が真っ暗になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 1 run tellraw @a [{"translate": "%2$sによって%1$sの身体はシビレ、心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 2 run tellraw @a [{"translate": "%2$sによってその時%1$sに電流が走る・・・ひらめきはなかった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
