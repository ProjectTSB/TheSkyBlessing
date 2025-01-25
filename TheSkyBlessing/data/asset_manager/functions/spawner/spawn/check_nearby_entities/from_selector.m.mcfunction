#> asset_manager:spawner/spawn/check_nearby_entities/from_selector.m
# @input args
#   SpawnerID: int
# @within function asset_manager:spawner/spawn/check_nearby_entities/

$execute store result score $NearbyEntities Temporary if entity @e[scores={SummonedSpawnerID=$(SpawnerID)},distance=..128]
