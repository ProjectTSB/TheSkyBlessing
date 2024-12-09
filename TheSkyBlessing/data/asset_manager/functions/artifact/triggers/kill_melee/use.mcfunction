#> asset_manager:artifact/triggers/kill_melee/use
#
#
#
# @within function asset_manager:artifact/triggers/kill_melee/foreach

# 共通処理
# アイテムを破壊するとBrokeItemが追加される
    function asset_manager:artifact/use/

# 処理対象の神器の重複数を取得する
    execute store result storage asset:context Count int 1 if data storage asset:artifact TargetItemList[]
# 処理対象の神器の残り使用回数を取得する
# ただしhotbarでない場合に限る
    execute unless data storage asset:artifact TargetItem{Slot:"hotbar"} run data modify storage asset:context RemainingCount set from storage asset:artifact TargetItem.RemainingCount

# 神器を呼び出し
    function asset_manager:artifact/triggers/kill_melee/kill_melee.m with storage asset:context

# リセット
    data remove storage asset:context BrokeItem
    data remove storage asset:context Count
