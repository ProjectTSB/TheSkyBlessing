#> asset_manager:artifact/data/old/init
#
# EntityStorageに退避された1tick前のデータをOldに突っ込む
#
# @within function asset_manager:artifact/triggers/

# 初期化
    data remove storage asset:context Old
# EntityStorage呼び出し
    function oh_my_dat:please
# 突っ込む
    data modify storage asset:context Old.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Inventory
    data modify storage asset:context Old.SelectedItemSlot set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.SelectedItemSlot
    data modify storage asset:context Old.Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Items
    data modify storage asset:context Old.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.id
# EntityStorageから削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash