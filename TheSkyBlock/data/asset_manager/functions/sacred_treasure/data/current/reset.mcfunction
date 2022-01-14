#> asset_manager:sacred_treasure/data/current/reset
#
# asset:contextの最上層データをリセットします
#
# @within function
#   asset_manager:sacred_treasure/data/*/*_current
#   asset_manager:sacred_treasure/triggers/

# リセット
    data remove storage asset:context Inventory
    data remove storage asset:context Items
    data remove storage asset:context id