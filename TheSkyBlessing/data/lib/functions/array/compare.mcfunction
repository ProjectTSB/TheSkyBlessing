#> lib:array/compare
#
# 配列の各要素について同一であるかを比較し、その結果の配列を返します。
#
# Array, Array2の要素の数は同一である必要があります。
#
# @input
#   storage lib: Array: [any] @ N
#   操作する配列データ
#   storage lib: Array2: [any] @ N
#   目的の要素のindex
# @output
#   storage lib: CompareResult: [boolean] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 再帰的に動かす
    execute if score $Index Temporary matches 1.. run function lib:array/core/compare

# リセット
    scoreboard players reset $Temp Temporary