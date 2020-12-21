#> lib:bit_array_to_integer/core/recursive
#
#
#
# @within function lib:bit_array_to_integer/core/*

execute store result score $bit Temporary run data get storage lib: Argument.BitArray[-1]
data remove storage lib: Argument.BitArray[-1]
scoreboard players operation $Return.Number Argument += $Return.Number Argument
execute if score $bit Temporary matches 1 run scoreboard players add $Return.Number Argument 1
execute if data storage lib: Argument.BitArray[] run function lib:bit_array_to_integer/core/recursive