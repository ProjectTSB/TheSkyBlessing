#> asset_manager:artifact/data/new/stash_to_entity_storage
#
# NewをEntityStorageに退避させる
#
# @within function asset_manager:artifact/triggers/

# EntityStorage呼び出し
    function oh_my_dat:please
# 突っ込む
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Inventory set from storage asset:context New.Inventory
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.SelectedItemSlot set from storage asset:context New.SelectedItemSlot
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Items set from storage asset:context New.Items
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.id set from storage asset:context New.id
    execute if data storage asset:context New.EquipData run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.EquipData set from storage asset:context New.EquipData
    execute unless data storage asset:context New.EquipData run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.EquipData set from storage asset:context Old.EquipData
