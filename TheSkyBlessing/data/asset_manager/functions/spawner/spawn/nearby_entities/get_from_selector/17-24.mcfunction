#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-24
#
# SpawnRangeを二分探索する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-32

execute if score $SpawnRange Temporary matches ..200 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-20
execute if score $SpawnRange Temporary matches 210.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/21-24