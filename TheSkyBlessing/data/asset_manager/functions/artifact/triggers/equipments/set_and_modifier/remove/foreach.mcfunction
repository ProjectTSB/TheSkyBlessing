#> asset_manager:artifact/triggers/equipments/set_and_modifier/remove/foreach
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/remove/*

# Modifiersに値を追加
    execute if data storage asset:artifact Temp.PreviousDifferentEquipments[-1].Equipment.Modifiers[0] run data modify storage asset:artifact Temp.PreviousDifferentEquipments[-1].Equipment.Modifiers[].ID set from storage asset:artifact Temp.PreviousDifferentEquipments[-1].ID
    # execute if data storage asset:artifact Temp.PreviousDifferentEquipments[-1].Equipment.Modifiers[0] run data modify storage asset:artifact Temp.PreviousDifferentEquipments[-1].Equipment.Modifiers[].Slot set from storage asset:artifact Temp.PreviousDifferentEquipments[-1].Slot
    data modify storage asset:artifact Temp.Modifiers append from storage asset:artifact Temp.PreviousDifferentEquipments[-1].Equipment.Modifiers[]
# リセット
    data remove storage asset:artifact Temp.PreviousDifferentEquipments[-1]
# ループ
    execute if data storage asset:artifact Temp.PreviousDifferentEquipments[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/remove/foreach
