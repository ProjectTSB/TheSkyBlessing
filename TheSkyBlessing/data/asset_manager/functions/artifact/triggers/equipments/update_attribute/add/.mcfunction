#> asset_manager:artifact/triggers/equipments/update_attribute/add/
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/
#   asset_manager:artifact/triggers/equipments/update_attribute/add/

# Modifier一覧の取得
# asset:artifact Temp.New -> asset:artifact Temp.Modifiers
    execute if data storage asset:artifact Temp.New[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/
# Modifierがあれば追加
    execute if data storage asset:artifact Temp.Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/process
# リセット
    data remove storage asset:artifact Temp.Modifiers
