#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/21-24
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-24

execute if score $SpawnRange Temporary matches ..220 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/21-22
execute if score $SpawnRange Temporary matches 230.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/23-24