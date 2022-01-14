#> asset_manager:sacred_treasure/data/post_event_put/old
#
# 最上層のデータをOldデータに格納します
#
# @within function asset_manager:sacred_treasure/triggers/**

# idの更新(-1はトリガー的なトリガー処理による削除なので更新しない)
    execute unless data storage asset:context id{mainhand:-1} run data modify storage asset:context Old.id.mainhand set from storage asset:context id.mainhand
    execute unless data storage asset:context id{offhand:-1} run data modify storage asset:context Old.id.offhand set from storage asset:context id.offhand
    execute unless data storage asset:context id{feet:-1} run data modify storage asset:context Old.id.feet set from storage asset:context id.feet
    execute unless data storage asset:context id{legs:-1} run data modify storage asset:context Old.id.legs set from storage asset:context id.legs
    execute unless data storage asset:context id{chest:-1} run data modify storage asset:context Old.id.chest set from storage asset:context id.chest
    execute unless data storage asset:context id{head:-1} run data modify storage asset:context Old.id.head set from storage asset:context id.head
# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context Old.Items set from storage asset:context Items
    data modify storage asset:context Old.Inventory set from storage asset:context Inventory
# 初期化
    function asset_manager:sacred_treasure/data/reset_context