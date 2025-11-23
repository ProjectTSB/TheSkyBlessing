#> asset_manager:artifact/triggers/equipments/set_and_modifier/add/form_array/
# @within function
#   asset_manager:artifact/triggers/equipments/set_and_modifier/add/
#   asset_manager:artifact/triggers/equipments/set_and_modifier/add/form_array/

# Modifierに値を追加
    execute if data storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Modifiers[0] run data modify storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Modifiers[].ID set from storage asset:artifact Temp.CurrentEquipments[-1].ID
    execute if data storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Modifiers[0] run data modify storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Modifiers[].Slot set from storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Slot
    execute if data storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Modifiers[0] run data modify storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Modifiers[].MaxStack set from storage asset:artifact Temp.CurrentEquipments[-1].Equipment.MaxStack
    data modify storage asset:artifact Temp.ModifierStack append from storage asset:artifact Temp.CurrentEquipments[-1].Equipment.Modifiers[]
# Modifierのスタック処理
    execute if data storage asset:artifact Temp.ModifierStack[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/add/form_array/foreach
# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Temp.ModifierStack
    data remove storage asset:artifact Temp.CurrentEquipments[-1]
    execute if data storage asset:artifact Temp.CurrentEquipments[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/add/form_array/
