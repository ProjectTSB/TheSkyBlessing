#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/25-32
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-32

execute if score $SpawnRange Temporary matches ..280 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/25-28
execute if score $SpawnRange Temporary matches 290.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/29-32