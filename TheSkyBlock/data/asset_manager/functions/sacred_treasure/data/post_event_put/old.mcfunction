#> asset_manager:sacred_treasure/data/post_event_put/old
#
# 最上層のデータをOldデータに格納します
#
# @within function asset_manager:sacred_treasure/triggers/**

# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context Old.id set from storage asset:context id
    data modify storage asset:context Old.Items set from storage asset:context Items
    data modify storage asset:context Old.Inventory set from storage asset:context Inventory
# 初期化
    function asset_manager:sacred_treasure/data/reset_context