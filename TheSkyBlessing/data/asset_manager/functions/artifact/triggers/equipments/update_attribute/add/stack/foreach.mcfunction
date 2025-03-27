#> asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach
# @within function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/*

# Modifierを切り出す
    data modify storage asset:artifact Temp.Modifier set from storage asset:artifact Temp.ModifierStack[-1]
# Modifierのスタックを行う
    function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/calc.m with storage asset:artifact Temp.Modifier
# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Temp.Modifier
    data remove storage asset:artifact Temp.ModifierStack[-1]
    execute if data storage asset:artifact Temp.ModifierStack[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/stack/foreach
