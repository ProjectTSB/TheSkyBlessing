#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/61-64
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/57-64

execute if score $SpawnRange Temporary matches ..620 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/61-62
execute if score $SpawnRange Temporary matches 630.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/63-64