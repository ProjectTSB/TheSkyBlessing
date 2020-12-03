#> lib:bit_array_to_integer/core/main
#
# 初期化して配列を反転させて再帰処理を呼び出すよ
#
# @within function lib:bit_array_to_integer/

scoreboard players set $Return.Number Lib 0
data modify storage lib: Argument.Array set from storage lib: Argument.BitArray
function lib:array/reverse
data modify storage lib: Argument.BitArray set from storage lib: Argument.Array
function lib:bit_array_to_integer/core/recursive