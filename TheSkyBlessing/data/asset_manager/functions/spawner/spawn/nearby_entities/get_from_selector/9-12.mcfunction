#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-12
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-16

execute if score $SpawnRange Temporary matches ..100 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-10
execute if score $SpawnRange Temporary matches 110.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/11-12