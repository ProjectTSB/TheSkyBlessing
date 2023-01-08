#> lib:array/compare
#
# 配列と比較対象配列の各要素について同一であるかを比較し、その結果の配列を返します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage lib: ArrayA: [T] @ N
#   比較配列A
#   storage lib: ArrayB: [T] @ N
#   比較配列B
# @output
#   storage lib: CompareResult: [{ _: { _: boolean } }] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage lib: Array

# 再帰的に動かす
    execute if data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run function lib:array/core/compare

# 結果を反転
    function lib:array/reverse
    data modify storage lib: CompareResult set from storage lib: Array

# リセット
    data remove storage lib: Array
    scoreboard players reset $Temp Temporary