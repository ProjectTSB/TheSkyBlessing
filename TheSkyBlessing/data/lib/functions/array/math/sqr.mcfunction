#> lib:array/math/sqr
#
# 配列の各要素を、2乗した結果を返します。
#
# @input
#   storage lib: Array: [any] @ N
#   配列データ
# @output
#   storage lib: SqrResult: [double] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage lib: CopiedArray set from storage lib: Array
    data remove storage lib: Array

# 再帰的に動かす
    execute if data storage lib: CopiedArray[0] run function lib:array/core/math/sqr

# 結果を反転
    function lib:array/reverse
    data modify storage lib: SqrResult set from storage lib: Array

# リセット
    data remove storage lib: Array
    data remove storage lib: CopiedArray
    scoreboard players reset $Mul Temporary
    scoreboard players reset $Temp Temporary