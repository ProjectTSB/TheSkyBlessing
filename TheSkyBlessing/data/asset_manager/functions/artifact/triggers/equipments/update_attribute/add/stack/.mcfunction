#> asset_manager:artifact/triggers/equipments/update_attribute/add/stack/
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/add/
#   asset_manager:artifact/triggers/equipments/update_attribute/add/stack/

# Modifier一覧を切り出す
    # execute if data storage asset:artifact New.CopiedItemData[-1].Modifiers[0] run data modify storage asset:artifact New.CopiedItemData[-1].Modifiers[].ID set from storage asset:artifact New.CopiedItemData[-1].ID
    # execute if data storage asset:artifact New.CopiedItemData[-1].Modifiers[0] run data modify storage asset:artifact New.CopiedItemData[-1].Modifiers[].Slot set from storage asset:artifact New.CopiedItemData[-1].Slot
    data modify storage asset:artifact Modifiers append from storage asset:artifact New.CopiedItemData[-1].Modifiers[]

# Modifierのスタック処理
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach

# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Modifiers
    data remove storage asset:artifact New.CopiedItemData[-1]
    execute if data storage asset:artifact New.CopiedItemData[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/
