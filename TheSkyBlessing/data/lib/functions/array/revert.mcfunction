#> lib:array/revert
#
# 配列をキャッシュを元に復元します。
#
# @input
#   storage lib: Array: any[]
#   move後の配列
#   storage lib: Cache: any[]
#   move時に生成される配列
# @output
#   storage lib: Array: any[]
#   move前の配列構造
# @api


# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# Cacheを復元
    execute if data storage lib: Cache[0] run function lib:array/core/revert