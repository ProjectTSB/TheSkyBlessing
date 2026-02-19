#> lib:array/distinct
#
# 配列内の一意の値の一覧を返します。
#
# 配列の要素の型が Compound の場合、キーはすべての要素で同一である必要があります。
#
# @input
#   T extends any
#   storage lib: Array: [T] @ N
#   操作する配列データ
# @output
#   storage lib: Array: [T] @ ..N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 反転する
    function lib:array/reverse
# 移行する
    data modify storage lib: CopiedArray set from storage lib: Array
    data remove storage lib: Array
# 再帰的に動かす
    execute if data storage lib: CopiedArray[0] run function lib:array/core/distinct/
# 整形する
    data modify storage lib: Array append from storage lib: DistinctArray[]._

# リセット
    data remove storage lib: CopiedArray
    data remove storage lib: DistinctArray
