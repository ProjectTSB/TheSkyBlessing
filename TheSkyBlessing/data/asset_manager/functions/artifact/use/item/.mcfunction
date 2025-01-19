#> asset_manager:artifact/use/item/
#
#
#
# @within function
#   asset_manager:artifact/use/
#   asset_manager:artifact/use/item/

# 要素を拾う
    data modify storage asset:artifact TargetItem set from storage asset:artifact TargetItemList[-1]
# 最終使用tick保存
    execute store result storage asset:artifact TargetItem.LatestUseTick int 1 run time query gametime
# アイテム更新
    execute unless data storage asset:artifact TargetItem.RemainingCount run function asset_manager:artifact/use/item/update
    execute if data storage asset:artifact TargetItem.RemainingCount run function asset_manager:artifact/use/item/has_remain
# 破壊フラグがなければ新しい配列に追加
    execute unless data storage asset:artifact TargetItem{Broken:true} run data modify storage asset:artifact RenewedItemList append from storage asset:artifact TargetItem
# 末尾削除
    data remove storage asset:artifact TargetItemList[-1]
# 要素が残ってるなら再帰
    execute if data storage asset:artifact TargetItemList[0] run function asset_manager:artifact/use/item/
