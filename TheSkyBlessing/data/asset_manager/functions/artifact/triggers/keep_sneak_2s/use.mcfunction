#> asset_manager:artifact/triggers/keep_sneak_2s/use
#
#
#
# @within function asset_manager:artifact/triggers/keep_sneak_2s/

# 共通処理
# アイテムを破壊するとBrokeItemが追加される
    function asset_manager:artifact/use/

# 処理対象の神器の重複数を取得する
    execute store result storage asset:context Count int 1 if data storage asset:artifact TargetItemList[]

# 神器を呼び出し
    function asset_manager:artifact/triggers/keep_sneak_2s/keep_sneak_2s.m with storage asset:context

# リセット
    data remove storage asset:context BrokeItem
    data remove storage asset:context Count
