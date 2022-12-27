#> lib:array/math/sum
#
# 配列の要素の総和を計算します。
#
# @input
#   配列データ
# @output
#   storage lib: SumResult: int
#   総和
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    scoreboard players set $Sum Temporary 0
# 総和を計算する
    function lib:array/math/core/sum
# 総和をSumResultに突っ込む
    execute store result storage lib: SumResult int 1 run scoreboard players get $Sum Temporary
# リセット
    scoreboard players reset $Sum Temporary
    scoreboard players reset $Temp Temporary