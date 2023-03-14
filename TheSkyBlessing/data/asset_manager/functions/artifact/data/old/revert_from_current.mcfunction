#> asset_manager:artifact/data/old/revert_from_current
#
# currentデータをOldに格納します
#
# @within function asset_manager:artifact/triggers/**

# 元配列
    function asset_manager:artifact/data/current/equips/init
    data modify storage asset:artifact MaskEquips set from storage asset:artifact Equipments

    data modify storage asset:context id set from storage asset:context Old.id
    function asset_manager:artifact/data/current/equips/init
# idのmerge (-1はトリガー的なトリガー処理による削除なので上書きしない)
    function asset_manager:artifact/data/current/equips/merge
# idの更新
    function asset_manager:artifact/data/current/equips/replace
# 新しいデータを一つ上の階層に上げる
    data modify storage asset:context Old.id set from storage asset:context id
    data modify storage asset:context Old.Items set from storage asset:context Items
    data modify storage asset:context Old.Inventory set from storage asset:context Inventory
    data modify storage asset:context Old.SelectedItemSlot set from storage asset:context SelectedItemSlot
# リセット
    data remove storage asset:artifact MaskEquips
    data remove storage asset:artifact Equipments
    function asset_manager:artifact/data/current/reset