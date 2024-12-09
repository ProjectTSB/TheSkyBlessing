#> asset_manager:artifact/triggers/damage_lightning/use
#
#
#
# @within function asset_manager:artifact/triggers/damage_lightning/foreach

# 共通処理
# アイテムを破壊するとBrokeItemが追加される
    function asset_manager:artifact/use/

# 処理対象の神器の重複数を取得する
    execute store result storage asset:context Count int 1 if data storage asset:artifact TargetItemList[]

# 神器を呼び出し
    function asset_manager:artifact/triggers/damage_lightning/damage_lightning.m with storage asset:context

# リセット
    data remove storage asset:context BrokeItem
    data remove storage asset:context Count
