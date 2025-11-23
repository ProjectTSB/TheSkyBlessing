#> lib:integer_to_bit_array/core/main
#
# 初期化して再帰処理を呼び出すよ
#
# @within function lib:integer_to_bit_array/

data modify storage lib: Return.Array set value []
scoreboard players set $i Temporary 0
function lib:integer_to_bit_array/core/recursive
scoreboard players reset $i Temporary