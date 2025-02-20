#> lib:message/common/die/physical
#
#
#
# @within function lib:score_to_health_wrapper/core/show_common_death_message

#> Random
# @private
#declare score_holder $Random

execute store result score $Random Temporary run function lib:random/
scoreboard players operation $Random Temporary %= $100 Const

execute if score $Random Temporary matches 00 run tellraw @a [{"translate": "%2$sの物理的要因によって、%1$sは生命活動の停止を確認... 死んだのだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 01..33 run tellraw @a [{"translate": "%1$sは%2$sによって身体を見るも無残な姿と化した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 34..66 run tellraw @a [{"translate": "%1$sは%2$sに切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 67..99 run tellraw @a [{"translate": "%1$sは%2$sによって床のシミとなった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
