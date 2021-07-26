#> asset_manager:sacred_treasure/core/use/
#
# 神器使用時の処理を実行します
#
# @within function asset:sacred_treasure/lib/use/*

# 神器データの取得
    function asset_manager:sacred_treasure/core/data/get_data_from_slot
# MP減少処理
    function asset_manager:sacred_treasure/core/use/remove_mp
# クールダウン保存
    execute if data storage asset:sacred_treasure Item.tag.TSB.SpecialCooldown store result score $SacredTreasureSpecialCooldown Global run data get storage asset:sacred_treasure Item.tag.TSB.SpecialCooldown
# 最終使用tick保存
    execute store result storage asset:sacred_treasure Item.tag.TSB.LatestUseTick int 1 run time query gametime
# アイテム更新
    execute unless data storage asset:sacred_treasure Item.tag.TSB.RemainingCount run function asset_manager:sacred_treasure/core/use/item/update
    execute if data storage asset:sacred_treasure Item.tag.TSB.RemainingCount run function asset_manager:sacred_treasure/core/use/item/has_remain
# リセット
    data remove storage asset:sacred_treasure TargetSlot
    data remove storage asset:sacred_treasure Item