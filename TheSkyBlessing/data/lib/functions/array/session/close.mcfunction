#> lib:array/session/close
#
#
#
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションは既に閉じられています。","color":"white"}]
# リセット
    data remove storage lib: Cache
    data remove storage lib: Array
    data remove storage lib: ArrayA
    data remove storage lib: ArrayB
    data remove storage lib: Elements
    data remove storage lib: Package
    data remove storage lib: CompareResult
# セッションフラグを消す
    data modify storage lib: ArrayLibSessionOpened set value false