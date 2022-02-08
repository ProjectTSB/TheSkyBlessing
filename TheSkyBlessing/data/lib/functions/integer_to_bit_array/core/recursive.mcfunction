#> lib:integer_to_bit_array/core/recursive
#
# 再帰的にbinary配列を生成するよ
#
# @within function lib:integer_to_bit_array/core/*

execute if score $Argument.Number Temporary matches 00.. run data modify storage lib: Return.Array append value 0
execute if score $Argument.Number Temporary matches ..-1 run data modify storage lib: Return.Array append value 1
scoreboard players operation $Argument.Number Temporary += $Argument.Number Temporary
scoreboard players add $i Temporary 1
execute if score $i Temporary < $32 Const run function lib:integer_to_bit_array/core/recursive