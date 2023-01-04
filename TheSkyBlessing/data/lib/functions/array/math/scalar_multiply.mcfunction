#> lib:array/math/scalar_multiply
#
# 配列の各要素を、Mulで乗算した結果を返します。
#
# @input
#   storage lib: Array: [any] @ N
#   配列データ
#   storage lib: Mul: double
#   係数
# @output
#   storage lib: MulResult: [double] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# Mulを取得する
    execute store result score $Mul Temporary run data get storage lib: Mul 100

# 移行する
    data modify storage lib: CopiedArray set from storage lib: Array
    data remove storage lib: Array

# 再帰的に動かす
    execute if data storage lib: CopiedArray[0] run function lib:array/core/math/scalar_multiply

# 結果を反転
    function lib:array/reverse
    data modify storage lib: MulResult set from storage lib: Array

# リセット
    data remove storage lib: Array
    data remove storage lib: CopiedArray
    data remove storage lib: Mul
    scoreboard players reset $Mul Temporary
    scoreboard players reset $Temp Temporary