#> asset_manager:artifact/triggers/equipments/update_attribute/attire/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/

# tellraw @a [{"storage":"asset:artifact","nbt":"Old.MaskedItemData[].EquipID"}]
# tellraw @a [{"storage":"asset:artifact","nbt":"New.MaskedItemData[].EquipID"}]

# 2つの配列を重複を起こさないように結合する
    data modify storage asset:artifact Attire.List set value []
    data modify storage asset:artifact Attire.Target append from storage asset:artifact Old.MaskedItemData[].EquipID
    data modify storage asset:artifact Attire.Target append from storage asset:artifact New.MaskedItemData[].EquipID
    function asset_manager:artifact/triggers/equipments/update_attribute/attire/concat
# 各要素ごとに当てはまる部位数を確認して反映する
    function asset_manager:artifact/triggers/equipments/update_attribute/attire/foreach
# リセット
    data remove storage asset:artifact Attire
    data remove storage asset:artifact CopiedNewEquipIDs
