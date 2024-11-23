#> asset_manager:artifact/triggers/attack/use
#
#
#
# @within function asset_manager:artifact/triggers/attack/foreach

# 共通処理
# アイテムを破壊するとBrokeItemが追加される
    execute unless data storage asset:context {SubTrigger:true} run function asset_manager:artifact/use/

# 処理対象の神器の重複数を取得する
    execute store result storage asset:context Count int 1 if data storage asset:artifact TargetItemList[]

# 神器を呼び出し
    function asset_manager:artifact/triggers/attack/attack.m with storage asset:context

# リセット
    data remove storage asset:context BrokeItem
    data remove storage asset:context Count
