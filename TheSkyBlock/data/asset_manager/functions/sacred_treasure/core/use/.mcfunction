#> asset_manager:sacred_treasure/core/use/
#
# 神器使用時の処理を実行します
#
# @within function asset:sacred_treasure/lib/use/*

# 神器データの取得
    function asset_manager:sacred_treasure/core/use/get_item_data
# MP減少処理
    function asset_manager:sacred_treasure/core/use/remove_mp
# クールダウン保存
    execute store result score $SacredTreasureSpecialCooldown Global run data get storage asset:sacred_treasure Item.tag.TSB.SpecialCooldown
# 使用回数減少処理
    execute if data storage asset:sacred_treasure Item.tag.TSB.RemainingCount run function asset_manager:sacred_treasure/core/use/remove_remain/
# 最終使用tick保存
    execute store result storage asset:sacred_treasure Item.tag.TSB.LatestUseTick int 1 run time query gametime
# アイテム更新 // ifを使わないのはそもそも残り回数が存在しない場合の対策
    execute unless score $Remain Temporary matches ..0 run function asset_manager:sacred_treasure/core/use/update_item
# リセット
    scoreboard players reset $Remain Temporary
    data remove storage asset:sacred_treasure TargetSlot
    data remove storage asset:sacred_treasure Item