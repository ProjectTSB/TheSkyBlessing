#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-16
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-32

execute if score $SpawnRange Temporary matches ..80 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-8
execute if score $SpawnRange Temporary matches 90.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-16