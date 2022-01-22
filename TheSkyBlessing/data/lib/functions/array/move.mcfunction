#> lib:array/move
#
# 配列をキャッシュへ移動します。
#
# @input
#   storage lib: Array: any[]
#   操作する配列データ
#   score $Argument.Index Lib
#   目的の要素のindex
# @output
#   storage lib:
#       Array: any[]
#           Array[-1]に目的の要素が存在する配列
#       Cache: any[]
#           移動されたデータ
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 動かす回数を算出する
    execute store result score $Index Temporary if data storage lib: Array[]
    scoreboard players remove $Index Temporary 1
    scoreboard players operation $Index Temporary -= $Argument.Index Lib
# 再帰的に動かす
    execute if score $Index Temporary matches 1.. run function lib:array/core/move