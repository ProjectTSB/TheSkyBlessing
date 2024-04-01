#> asset_manager:artifact/use/item/.m
#
#
#
# @input args
#   Index : int
# @within function
#   asset_manager:artifact/use/.m
#   asset_manager:artifact/use/item/.m

# 古いデータを移行
    execute unless data storage asset:artifact TargetItems[-1].tag.TSB.Triggers[0] run function asset_manager:artifact/data/migrate
# 最終使用tick保存
    $execute store result storage asset:artifact TargetItems[-1].tag.TSB.Triggers[$(Index)].LatestUseTick int 1 run time query gametime
# アイテム更新
    execute unless data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount run function asset_manager:artifact/use/item/update
    execute if data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount run function asset_manager:artifact/use/item/has_remain
# 末尾削除
    data remove storage asset:artifact TargetItems[-1]
# 要素が残ってるなら再帰
    execute if data storage asset:artifact TargetItems[0] run function asset_manager:artifact/use/item/.m with storage asset:artifact
