#> asset_manager:sacred_treasure/data/current/reset
#
# currentデータをリセットします
#
# @within function
#   asset_manager:sacred_treasure/data/*/*_current
#   asset_manager:sacred_treasure/triggers/

# リセット
    data remove storage asset:context Inventory
    data remove storage asset:context SelectedItemSlot
    data remove storage asset:context Items
    data remove storage asset:context id