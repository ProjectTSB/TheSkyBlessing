#> asset_manager:sacred_treasure/core/data/post_event_put/new
#
#
#
# @within function asset_manager:sacred_treasure/triggers/**

# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context New.id set from storage asset:context id
    data modify storage asset:context New.Items set from storage asset:context Items
    data modify storage asset:context New.Inventory set from storage asset:context Inventory
# 初期化
    function asset_manager:sacred_treasure/core/data/reset_context