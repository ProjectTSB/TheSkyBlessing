#> player_manager:absorption/set.m
# @input args SumResult: double
# @within function player_manager:absorption/

$attribute @s generic.max_absorption base set $(SumResult)
effect give @s absorption 1 255 true
effect clear @s absorption
