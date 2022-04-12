#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/37-40
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/33-40

execute if score $SpawnRange Temporary matches ..380 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/37-38
execute if score $SpawnRange Temporary matches 390.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/39-40