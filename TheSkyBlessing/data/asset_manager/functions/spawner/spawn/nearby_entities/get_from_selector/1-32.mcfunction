#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-32
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/

execute if score $SpawnRange Temporary matches ..160 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-16
execute if score $SpawnRange Temporary matches 170.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-32