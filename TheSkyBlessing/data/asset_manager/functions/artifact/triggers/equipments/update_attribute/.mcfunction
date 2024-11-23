#> asset_manager:artifact/triggers/equipments/update_attribute/
#
#
#
# @within function asset_manager:artifact/triggers/

# 装備が変更されている箇所を抽出する
# 新しい装備については、信仰が正しいか確認する
    data modify storage asset:artifact CopiedChanges set from storage asset:artifact EquipmentChanges
    data modify storage asset:artifact Old.CopiedItemData set from storage asset:artifact Old.ItemData
    data modify storage asset:artifact New.CopiedItemData set from storage asset:artifact New.ItemData
    function asset_manager:artifact/triggers/equipments/update_attribute/extract_changes
# 各装備について、equip / dis_equip トリガーを走らせる
    data modify storage asset:artifact Old.CopiedItemData set from storage asset:artifact Old.MaskedItemData
    data modify storage asset:artifact New.CopiedItemData set from storage asset:artifact New.MaskedItemData
    function asset_manager:artifact/triggers/equipments/update_attribute/equip_trigger
# セット装備効果の更新
    function asset_manager:artifact/triggers/equipments/update_attribute/attire/
# 装備時補正を更新
    data modify storage asset:artifact Old.CopiedItemData set from storage asset:artifact Old.MaskedItemData
    function asset_manager:artifact/triggers/equipments/update_attribute/remove/
    data modify storage asset:artifact New.CopiedItemData set from storage asset:artifact New.MaskedItemData
    function asset_manager:artifact/triggers/equipments/update_attribute/add/

# リセット
    data remove storage asset:artifact CopiedChanges
    data remove storage asset:artifact Old.CopiedItemData
    data remove storage asset:artifact New.CopiedItemData
    data remove storage asset:artifact Old.MaskedItemData
    data remove storage asset:artifact New.MaskedItemData
