#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-8
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-16

execute if score $SpawnRange Temporary matches ..40 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-4
execute if score $SpawnRange Temporary matches 50.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/5-8