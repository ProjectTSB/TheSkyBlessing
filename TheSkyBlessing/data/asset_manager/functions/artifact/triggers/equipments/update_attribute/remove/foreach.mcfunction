#> asset_manager:artifact/triggers/equipments/update_attribute/remove/foreach
# @within function asset_manager:artifact/triggers/equipments/update_attribute/remove/*

# Modifiersに値を追加
    # execute if data storage asset:artifact Old.CopiedItemData[-1].Modifiers[0] run data modify storage asset:artifact Old.CopiedItemData[-1].Modifiers[].ID set from storage asset:artifact Old.CopiedItemData[-1].ID
    # execute if data storage asset:artifact Old.CopiedItemData[-1].Modifiers[0] run data modify storage asset:artifact Old.CopiedItemData[-1].Modifiers[].Slot set from storage asset:artifact Old.CopiedItemData[-1].Slot
    data modify storage asset:artifact Modifiers append from storage asset:artifact Old.CopiedItemData[-1].Modifiers[]

# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Old.CopiedItemData[-1]
    execute if data storage asset:artifact Old.CopiedItemData[0] run function asset_manager:artifact/triggers/equipments/update_attribute/remove/foreach
