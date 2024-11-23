#> asset_manager:artifact/data/current/reset
#
# currentデータをリセットします
#
# @within function
#   asset_manager:artifact/data/*/*_current

# リセット
    data remove storage asset:context Inventory
    data remove storage asset:context SelectedItemSlot
    data remove storage asset:context Items
    data remove storage asset:context id
