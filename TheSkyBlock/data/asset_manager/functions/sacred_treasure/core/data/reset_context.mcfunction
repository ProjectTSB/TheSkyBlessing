#> asset_manager:sacred_treasure/core/data/reset_context
#
# asset:contextの最上層データをリセットします
#
# @within function
#   asset_manager:sacred_treasure/core/data/post_event_put/*
#   asset_manager:sacred_treasure/triggers/

# リセット
    data remove storage asset:context Inventory
    data remove storage asset:context Items
    data remove storage asset:context id