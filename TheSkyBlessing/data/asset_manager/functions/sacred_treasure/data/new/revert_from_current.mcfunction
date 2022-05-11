#> asset_manager:sacred_treasure/data/new/revert_from_current
#
# currentデータをNewに格納します
#
# @within function asset_manager:sacred_treasure/triggers/**

# 元配列
    function asset_manager:sacred_treasure/data/current/equips/init
    data modify storage asset:sacred_treasure MaskEquips set from storage asset:sacred_treasure Equipments

    data modify storage asset:context id set from storage asset:context New.id
    function asset_manager:sacred_treasure/data/current/equips/init
# idのmerge (-1はトリガー的なトリガー処理による削除なので上書きしない)
    function asset_manager:sacred_treasure/data/current/equips/merge
# idの更新
    function asset_manager:sacred_treasure/data/current/equips/replace
# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context New.id set from storage asset:context id
    data modify storage asset:context New.Items set from storage asset:context Items
    data modify storage asset:context New.Inventory set from storage asset:context Inventory
    data modify storage asset:context New.SelectedItemSlot set from storage asset:context SelectedItemSlot
# リセット
    data remove storage asset:sacred_treasure MaskEquips
    data remove storage asset:sacred_treasure Equipments
    function asset_manager:sacred_treasure/data/current/reset