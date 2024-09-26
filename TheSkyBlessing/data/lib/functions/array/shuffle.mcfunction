#> lib:array/shuffle
#
# 配列の要素をシャッフルします
#
# @input
#   T extends any
#   storage lib: Array: [T] @ N
#   配列データ
# @output
#   storage lib: Array: [T] @ N
#   ランダムな順の配列
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 配列サイズを取得
    execute store result score $ListSize Lib if data storage lib: Array[]
# 初期化
    data modify storage lib: ArrayO set value []
# 再帰的にシャッフル
    function lib:array/core/shuffle
# シャッフル後のデータで上書きする
    data modify storage lib: Array set from storage lib: ArrayO
# リセット
    data remove storage lib: ArrayO
    scoreboard players reset $ListSize Lib
    scoreboard players reset $Index Temporary
