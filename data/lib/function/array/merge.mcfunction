#> lib:array/merge
#
# 配列の各要素同士を結合します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends object
#   storage lib: ArrayA: [T] @ N
#   配列A
#   storage lib: ArrayB: [T] @ N
#   配列B
# @output
#   storage lib: MergeResult: [T] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage lib: Array

# 再帰的に動かす
    execute if data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run function lib:array/core/merge

# 結果を反転
    function lib:array/reverse
    data modify storage lib: MergeResult set from storage lib: Array

# リセット
    data remove storage lib: Array