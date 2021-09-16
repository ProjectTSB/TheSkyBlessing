#> asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/restore
#
#
#
# @within function
#   asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/
#   asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/restore

data modify storage asset:spawner NearbyEntitiesCache append from storage asset:spawner Temp[-1]
data remove storage asset:spawner Temp[-1]
execute if data storage asset:spawner Temp[0] run function asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/restore