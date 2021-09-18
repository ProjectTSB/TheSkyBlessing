#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/49-52
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/49-56

execute if score $SpawnRange Temporary matches ..500 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/49-50
execute if score $SpawnRange Temporary matches 510.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/51-52