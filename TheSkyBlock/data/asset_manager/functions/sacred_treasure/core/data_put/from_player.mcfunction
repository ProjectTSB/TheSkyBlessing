#> asset_manager:sacred_treasure/core/data_put/from_player
#
# 神器のIDを取得します
#
# @within asset_manager:sacred_treasure/triggers/*

# データを移植
    data modify storage asset:sacred_treasure Argument.SelectedItem set from entity @s SelectedItem
    data modify storage asset:sacred_treasure Argument.Inventory set from entity @s Inventory
# 共通処理
    function asset_manager:sacred_treasure/core/data_put/common