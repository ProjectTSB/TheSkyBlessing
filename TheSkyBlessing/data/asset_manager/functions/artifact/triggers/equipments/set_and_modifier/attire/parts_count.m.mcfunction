#> asset_manager:artifact/triggers/equipments/set_and_modifier/attire/parts_count.m
# @input args ID : int
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/foreach

$return run execute if data storage asset:artifact Temp.CurrentDifferentEquipments[{Equipment:{SetEffectID:$(ID)}}]
