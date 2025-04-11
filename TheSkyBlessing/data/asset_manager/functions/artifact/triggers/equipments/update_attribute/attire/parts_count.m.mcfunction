#> asset_manager:artifact/triggers/equipments/update_attribute/attire/parts_count.m
# @input args ID : int
# @within function asset_manager:artifact/triggers/equipments/update_attribute/attire/foreach

$return run execute if data storage asset:artifact Temp.CurrentDifferentEquipments[{Equipment:{SetEffectID:$(ID)}}]
