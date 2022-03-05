#> lib:array/compare_single
#
# 配列の各要素について比較対象と同一であるかを比較し、その結果の配列を返します。
#
# @input
#   T extends any
#   storage lib: Array: [T] @ N
#   比較配列A
#   storage lib: CompareTarget: T
#   比較配列B
# @output
#   storage lib: CompareResult: [{ _: { _: boolean } }] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 移行する
    data modify storage lib: CopiedArray set from storage lib: Array
    data remove storage lib: Array

# 再帰的に動かす
    execute if data storage lib: CopiedArray[0] run function lib:array/core/compare_single

# 結果を反転
    function lib:array/reverse
    data modify storage lib: CompareResult set from storage lib: Array

# リセット
    data remove storage lib: Array
    data remove storage lib: CopiedArray
    data remove storage lib: CompareTarget
    scoreboard players reset $Temp Temporary