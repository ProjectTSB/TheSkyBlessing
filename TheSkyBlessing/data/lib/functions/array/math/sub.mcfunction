#> lib:array/math/sub
#
# 2つの配列の各要素について、値を減算した結果を返します。
#
# ArrayA, ArrayBの要素の数は同一である必要があります。
#
# @input
#   T extends any
#   storage lib: ArrayA: [Numeric] @ N
#   減算元(左)配列
#   storage lib: ArrayB: [Numeric] @ N
#   減算(右)配列
# @output
#   storage lib: SubResult: [double] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    data remove storage lib: Array

# 再帰的に動かす
    execute if data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run function lib:array/core/math/sub

# 結果を反転
    function lib:array/reverse
    data modify storage lib: SubResult set from storage lib: Array

# リセット
    data remove storage lib: Array
    scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp2 Temporary