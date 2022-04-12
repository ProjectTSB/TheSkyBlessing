#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/13-16
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-16

execute if score $SpawnRange Temporary matches ..140 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/13-14
execute if score $SpawnRange Temporary matches 150.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/15-16