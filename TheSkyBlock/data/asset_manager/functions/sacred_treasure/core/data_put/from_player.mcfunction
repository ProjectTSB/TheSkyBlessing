#> asset_manager:sacred_treasure/core/data_put/from_player
#
# 神器のIDを取得します
#
# @input
#   as player
#   storage asset:sacred_treasure Argument.AutoSlot ?
# @output storage asset:id
#   mainhand : int
#   offhand : int
#   feet : int
#   legs : int
#   chest : int
#   head : int
# @within asset_manager:sacred_treasure/triggers/*

# データを移植
    data modify storage asset:sacred_treasure Argument.SelectedItem set from entity @s SelectedItem
    data modify storage asset:sacred_treasure Argument.Inventory set from entity @s Inventory
# 共通処理
    function asset_manager:sacred_treasure/core/data_put/common