#> lib:bit_array_to_integer/core/main
#
# 初期化して配列を反転させて再帰処理を呼び出すよ
#
# @within function lib:bit_array_to_integer/

# 初期化
    scoreboard players set $Return.Number Lib 0
# セッション開ける
    function lib:array/session/open
# 反転
    data modify storage lib: Array set from storage lib: Argument.BitArray
    function lib:array/reverse
# 再帰的に計算
    function lib:bit_array_to_integer/core/recursive
# リセット
    function lib:array/session/close
    scoreboard players reset $bit Temporary