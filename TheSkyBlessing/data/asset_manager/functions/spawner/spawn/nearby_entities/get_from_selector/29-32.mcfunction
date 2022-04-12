#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/29-32
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/25-32

execute if score $SpawnRange Temporary matches ..300 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/29-30
execute if score $SpawnRange Temporary matches 310.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/31-32