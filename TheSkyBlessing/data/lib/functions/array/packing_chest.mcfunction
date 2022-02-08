#> lib:array/packing_chest
#
# 配列の後ろから27個を別の配列にSlotを付与して移します。
#
# @input
#   storage lib: Array: any[]
#   操作する配列データ
# @output storage lib:
#   Array: any[]
#   要素が最大27個後ろから抜き取られた配列
#   Package: any[]
#   Slotが付与された27個以下のリスト
# @public

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 初期化
    scoreboard players set $Index Temporary 0
# 箱詰め
    function lib:array/core/packing_chest
# リセット
    scoreboard players reset $Index Temporary