#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-16
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-16

execute if score $SpawnRange Temporary matches ..120 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-12
execute if score $SpawnRange Temporary matches 130.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/13-16