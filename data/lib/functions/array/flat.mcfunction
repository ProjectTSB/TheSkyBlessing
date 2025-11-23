#> lib:array/flat
#
# 配列の中の配列を全て結合します。
# 各配列の型は全て同一でなければなりません。
#
# @input
#   T extends any
#   storage lib: Array: [T] @ N
# @output
#   storage lib: Array: [T] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 末尾からappendするので反転
    function lib:array/reverse

# 初期化
    data modify storage lib: ArrayO set value []

# 再帰的に動かす
    execute if data storage lib: Array[0] run function lib:array/core/flat

# 処理後のデータで上書きする
    data modify storage lib: Array set from storage lib: ArrayO

# リセット
    data remove storage lib: ArrayO
