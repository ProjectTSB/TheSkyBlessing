#> asset_manager:artifact/triggers/equipments/update_effect/parts_count.m
# @input args SetID : int
# @within function asset_manager:artifact/triggers/equipments/update_effect/equip_set

$execute store result storage api: Argument.Stack int 1 if data storage asset:artifact EquipList[{EquipID:$(SetID)}]
