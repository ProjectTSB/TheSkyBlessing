#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-32
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-32

execute if score $SpawnRange Temporary matches ..240 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-24
execute if score $SpawnRange Temporary matches 250.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/25-32