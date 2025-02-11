#> asset_manager:artifact/triggers/equipments/update_attribute/add/
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/
#   asset_manager:artifact/triggers/equipments/update_attribute/add/

# Modifierを切り出す
    function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/

# Modifierがあれば処理する
    execute if data storage asset:artifact MaskedModifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/process

# リセット
    data remove storage asset:artifact MaskedModifiers
