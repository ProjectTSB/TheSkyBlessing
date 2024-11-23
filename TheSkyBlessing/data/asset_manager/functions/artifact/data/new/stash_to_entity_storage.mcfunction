#> asset_manager:artifact/data/new/stash_to_entity_storage
#
# NewをEntityStorageに退避させる
#
# @within function asset_manager:artifact/triggers/

# EntityStorage呼び出し
    function oh_my_dat:please
# 突っ込む
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Inventory set from storage asset:artifact New.Inventory
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.SelectedItemSlot set from storage asset:artifact New.SelectedItemSlot
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Items set from storage asset:artifact New.Items
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.ItemData set from storage asset:artifact New.ItemData
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Consumable set from storage asset:artifact New.Consumable
