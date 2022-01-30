#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-20
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-24

execute if score $SpawnRange Temporary matches ..180 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-18
execute if score $SpawnRange Temporary matches 190.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/19-20