#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/57-64
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/49-64

execute if score $SpawnRange Temporary matches ..600 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/57-60
execute if score $SpawnRange Temporary matches 610.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/61-64