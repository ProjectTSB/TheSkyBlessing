#> lib:array/session/open
#
#
#
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが正常に閉じられていません。","color":"white"}]
# 初期化
    data modify storage lib: Array set value []
    data modify storage lib: ArrayA set value []
    data modify storage lib: ArrayB set value []
    data modify storage lib: Cache set value []
    data modify storage lib: Elements set value []
    data modify storage lib: Package set value []
    data modify storage lib: CompareResult set value []
    data modify storage lib: SumResult set value 0
    data modify storage lib: MergeResult set value []
    data modify storage lib: Mul set value 1
    data modify storage lib: AddResult set value []
    data modify storage lib: MulResult set value []
    data modify storage lib: SubResult set value []
    data modify storage lib: SqrResult set value []
# セッションフラグを立てる
    data modify storage lib: ArrayLibSessionOpened set value true