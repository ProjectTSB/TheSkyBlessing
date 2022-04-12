#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-4
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-8

execute if score $SpawnRange Temporary matches ..20 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-2
execute if score $SpawnRange Temporary matches 30.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/3-4