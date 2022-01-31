#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/5-8
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-8

execute if score $SpawnRange Temporary matches ..60 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/5-6
execute if score $SpawnRange Temporary matches 70.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/7-8