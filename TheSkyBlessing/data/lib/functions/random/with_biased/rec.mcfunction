#> lib:random/with_biased/rec
# @within function lib:random/with_biased/*

#> Private
# @private
#declare score_holder $value

execute store result score $value Temporary run function lib:random/
execute store result storage lib: Random.value int 1 run scoreboard players operation $value Temporary %= $max Temporary
scoreboard players reset $value Temporary

execute store result storage lib: isScarcityHistoryIncluded byte 1 run function lib:random/with_biased/is_scarcity_history_included.m with storage lib: Random
execute if data storage lib: {isScarcityHistoryIncluded: true} if predicate lib:random_pass_per/75 run function lib:random/with_biased/rec
