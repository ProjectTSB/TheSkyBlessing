#> lib:bit_array_to_integer/core/recursive
#
# 再帰的に1ビットずつ加算していく
#
# @within function lib:bit_array_to_integer/core/*

execute store result score $bit Temporary run data get storage lib: Array[-1]
data remove storage lib: Array[-1]
scoreboard players operation $Return.Number Lib += $Return.Number Lib
execute if score $bit Temporary matches 1 run scoreboard players add $Return.Number Lib 1
execute if data storage lib: Array[] run function lib:bit_array_to_integer/core/recursive