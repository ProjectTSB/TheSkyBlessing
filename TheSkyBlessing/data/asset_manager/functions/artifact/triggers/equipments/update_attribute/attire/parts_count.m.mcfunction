#> asset_manager:artifact/triggers/equipments/update_attribute/attire/parts_count.m
# @input args ID : int
# @within function asset_manager:artifact/triggers/equipments/update_attribute/attire/foreach

$execute store result storage api: Argument.Stack int 1 if data storage asset:artifact Temp.New[{Equipment:{SetEffectID:$(ID)}}]
