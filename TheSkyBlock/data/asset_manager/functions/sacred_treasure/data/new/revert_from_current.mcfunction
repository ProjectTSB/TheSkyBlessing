#> asset_manager:sacred_treasure/data/new/revert_from_current
#
# currentデータをNewに格納します
#
# @within function asset_manager:sacred_treasure/triggers/**

# idの更新(-1はトリガー的なトリガー処理による削除なので更新しない)
    execute unless data storage asset:context id{mainhand:-1} run data modify storage asset:context New.id.mainhand set from storage asset:context id.mainhand
    execute unless data storage asset:context id{offhand:-1} run data modify storage asset:context New.id.offhand set from storage asset:context id.offhand
    execute unless data storage asset:context id{feet:-1} run data modify storage asset:context New.id.feet set from storage asset:context id.feet
    execute unless data storage asset:context id{legs:-1} run data modify storage asset:context New.id.legs set from storage asset:context id.legs
    execute unless data storage asset:context id{chest:-1} run data modify storage asset:context New.id.chest set from storage asset:context id.chest
    execute unless data storage asset:context id{head:-1} run data modify storage asset:context New.id.head set from storage asset:context id.head
# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context New.Items set from storage asset:context Items
    data modify storage asset:context New.Inventory set from storage asset:context Inventory
    data modify storage asset:context New.SelectedItemSlot set from storage asset:context SelectedItemSlot
# リセット
    function asset_manager:sacred_treasure/data/current/reset