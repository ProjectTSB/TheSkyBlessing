#> player_manager:absorption/set.m
#
#
#
# @within function player_manager:absorption/

$attribute @s generic.max_absorption base set $(Value)
effect give @s absorption 1 255 true
effect clear @s absorption
