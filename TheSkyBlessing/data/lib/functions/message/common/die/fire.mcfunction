#> lib:message/common/die/fire
#
#
#
# @within function lib:score_to_health_wrapper/core/show_common_death_message

#> Random
# @private
#declare score_holder $Random

execute store result score $Random Temporary run function lib:random/
scoreboard players operation $Random Temporary %= $3 Const

execute if score $Random Temporary matches 0 run tellraw @a [{"translate": "%2$sによって%1$sは燃え尽き真っ白になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 1 run tellraw @a [{"translate": "%2$sは%1$sを消し炭にした","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
execute if score $Random Temporary matches 2 run tellraw @a [{"translate": "%1$sは%2$sによってロウソクとしてその生涯を終えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]
