#> asset_manager:artifact/triggers/equipments/update_attribute/remove/
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/
#   asset_manager:artifact/triggers/equipments/update_attribute/remove/

# Modifier一覧を切り出す
    function asset_manager:artifact/triggers/equipments/update_attribute/remove/foreach

# Modifierがあれば削除
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/remove/process

# リセット
    data remove storage asset:artifact Modifiers
