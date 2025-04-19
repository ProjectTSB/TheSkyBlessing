#> asset_manager:artifact/triggers/equipments/set_and_modifier/add/
# @within function
#   asset_manager:artifact/triggers/equipments/set_and_modifier/
#   asset_manager:artifact/triggers/equipments/set_and_modifier/add/

# Modifier一覧の取得
# asset:artifact Temp.CurrentEquipments[].Modifiers -> asset:artifact Temp.Modifiers
    execute if data storage asset:artifact Temp.CurrentEquipments[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/add/form_array/
# Modifierがあれば追加
    execute if data storage asset:artifact Temp.Modifiers[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/add/process
# リセット
    data remove storage asset:artifact Temp.Modifiers
