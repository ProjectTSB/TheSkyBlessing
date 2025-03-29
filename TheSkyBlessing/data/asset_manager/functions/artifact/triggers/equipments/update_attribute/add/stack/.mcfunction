#> asset_manager:artifact/triggers/equipments/update_attribute/add/stack/
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/add/
#   asset_manager:artifact/triggers/equipments/update_attribute/add/stack/

# Modifierに値を追加
    execute if data storage asset:artifact Temp.New[-1].Equip.Modifiers[0] run data modify storage asset:artifact Temp.New[-1].Equip.Modifiers[].ID set from storage asset:artifact Temp.New[-1].ID
    # execute if data storage asset:artifact Temp.New[-1].Equip.Modifiers[0] run data modify storage asset:artifact Temp.New[-1].Equip.Modifiers[].Slot set from storage asset:artifact Temp.New[-1].Slot
    data modify storage asset:artifact Temp.ModifierStack append from storage asset:artifact Temp.New[-1].Equip.Modifiers[]
# Modifierのスタック処理
    execute if data storage asset:artifact Temp.ModifierStack[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach
# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Temp.ModifierStack
    data remove storage asset:artifact Temp.New[-1]
    execute if data storage asset:artifact Temp.New[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/
