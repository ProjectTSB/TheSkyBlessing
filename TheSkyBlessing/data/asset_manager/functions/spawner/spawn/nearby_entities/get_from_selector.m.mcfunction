#> asset_manager:spawner/spawn/nearby_entities/get_from_selector.m
# @input args
#   MobID: int
#   NearbyEntitiesCheckRange: double
# @within function asset_manager:spawner/spawn/nearby_entities/get.m

$execute store result score $NearbyEntities Temporary if entity @e[scores={MobID=$(MobID)},distance=..$(NearbyEntitiesCheckRange)]
