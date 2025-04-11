#> asset_manager:artifact/triggers/equipments/update_attribute/add/stack/
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/add/
#   asset_manager:artifact/triggers/equipments/update_attribute/add/stack/

# Modifierに値を追加
    execute if data storage asset:artifact Temp.CurrentDifferentEquipments[-1].Equipment.Modifiers[0] run data modify storage asset:artifact Temp.CurrentDifferentEquipments[-1].Equipment.Modifiers[].ID set from storage asset:artifact Temp.CurrentDifferentEquipments[-1].ID
    # execute if data storage asset:artifact Temp.CurrentDifferentEquipments[-1].Equipment.Modifiers[0] run data modify storage asset:artifact Temp.CurrentDifferentEquipments[-1].Equipment.Modifiers[].Slot set from storage asset:artifact Temp.CurrentDifferentEquipments[-1].Slot
    data modify storage asset:artifact Temp.ModifierStack append from storage asset:artifact Temp.CurrentDifferentEquipments[-1].Equipment.Modifiers[]
# Modifierのスタック処理
    execute if data storage asset:artifact Temp.ModifierStack[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach
# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Temp.ModifierStack
    data remove storage asset:artifact Temp.CurrentDifferentEquipments[-1]
    execute if data storage asset:artifact Temp.CurrentDifferentEquipments[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/
