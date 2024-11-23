#> asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach
# @within function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/*

# Modifierを切り出す
    data modify storage asset:artifact Modifier set from storage asset:artifact Modifiers[-1]

# Modifierのスタックを行う
    function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/calc.m with storage asset:artifact Modifier

# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact Modifiers[-1]
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach
