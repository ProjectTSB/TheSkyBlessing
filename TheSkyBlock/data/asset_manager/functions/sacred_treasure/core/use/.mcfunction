#> asset_manager:sacred_treasure/core/use/
#
# 神器使用時の処理を実行します
#
# @within function asset:sacred_treasure/lib/use/*

# 神器データの取得
    function asset_manager:sacred_treasure/core/use/get_item_data
# MP減少処理
    function asset_manager:sacred_treasure/core/use/remove_mp
# 使用回数減少処理
    execute if data storage asset:sacred_treasure Item.tag.TSB.RemainingCount run function asset_manager:sacred_treasure/core/use/remove_remain/
# リセット
    data remove storage asset:sacred_treasure TargetSlot
    data remove storage asset:sacred_treasure Item