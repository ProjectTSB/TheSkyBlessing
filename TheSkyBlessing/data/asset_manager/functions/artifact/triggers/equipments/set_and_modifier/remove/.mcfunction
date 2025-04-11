#> asset_manager:artifact/triggers/equipments/set_and_modifier/remove/
# @within function
#   asset_manager:artifact/triggers/equipments/set_and_modifier/
#   asset_manager:artifact/triggers/equipments/set_and_modifier/remove/

# Modifier一覧を取得
# asset:artifact Temp.PreviousDifferentEquipments -> asset:artifact Temp.Modifiers
    execute if data storage asset:artifact Temp.PreviousDifferentEquipments[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/remove/foreach
# Modifierがあれば削除
    execute if data storage asset:artifact Temp.Modifiers[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/remove/process
# リセット
    data remove storage asset:artifact Temp.Modifiers
