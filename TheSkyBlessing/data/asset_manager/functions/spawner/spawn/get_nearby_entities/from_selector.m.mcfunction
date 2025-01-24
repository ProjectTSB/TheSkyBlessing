#> asset_manager:spawner/spawn/get_nearby_entities/from_selector.m
# @input args
#   MobID: int
#   NearbyEntitiesCheckRange: double
# @within function asset_manager:spawner/spawn/get_nearby_entities/m

$execute store result score $NearbyEntities Temporary if entity @e[scores={MobID=$(MobID)},distance=..$(NearbyEntitiesCheckRange)]
