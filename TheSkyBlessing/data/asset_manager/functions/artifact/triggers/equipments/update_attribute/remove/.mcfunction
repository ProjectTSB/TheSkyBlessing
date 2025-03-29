#> asset_manager:artifact/triggers/equipments/update_attribute/remove/
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/
#   asset_manager:artifact/triggers/equipments/update_attribute/remove/

# Modifier一覧を取得
# asset:artifact Temp.Old -> asset:artifact Temp.Modifiers
    execute if data storage asset:artifact Temp.Old[0] run function asset_manager:artifact/triggers/equipments/update_attribute/remove/foreach
# Modifierがあれば削除
    execute if data storage asset:artifact Temp.Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/remove/process
# リセット
    data remove storage asset:artifact Temp.Modifiers
