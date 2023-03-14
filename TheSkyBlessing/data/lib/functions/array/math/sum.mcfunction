#> lib:array/math/sum
#
# 配列の要素の総和を計算します。
#
# 配列の値の型がNumeric型ではない場合は、`data get`で取得されるint値を値として扱います。
# 例えば、`List[String]`をArrayに渡した場合、各文字列の長さの総和を返します。
#
# @input
#   T extends any
#   storage lib: Array: [T]
#   配列データ
# @output
#   storage lib: SumResult: T extends Numeric ? double : int
#   総和
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    scoreboard players set $Sum Temporary 0
# 総和を計算する
    function lib:array/core/math/sum
# 総和をSumResultに突っ込む
    execute if score $isNumeric Temporary matches 0 store result storage lib: SumResult int 1.00 run scoreboard players get $Sum Temporary
    execute if score $isNumeric Temporary matches 1 store result storage lib: SumResult double 0.01 run scoreboard players get $Sum Temporary
# リセット
    scoreboard players reset $Sum Temporary
    scoreboard players reset $Temp Temporary
    scoreboard players reset $isNumeric Temporary