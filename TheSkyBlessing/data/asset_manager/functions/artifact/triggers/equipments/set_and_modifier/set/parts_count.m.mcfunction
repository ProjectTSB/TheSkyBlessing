#> asset_manager:artifact/triggers/equipments/set_and_modifier/set/parts_count.m
# @input args ID : int
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/set/foreach

$return run execute if data storage asset:context New.EquipData[{Equipment:{Effects:[{ID:$(ID)}]}}]
