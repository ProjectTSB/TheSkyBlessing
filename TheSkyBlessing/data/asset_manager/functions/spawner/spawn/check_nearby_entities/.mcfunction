#> asset_manager:spawner/spawn/check_nearby_entities/
# @output result is less than MaxNearbyEntities
# @within function asset_manager:spawner/spawn/single/

#> Private
# @within function asset_manager:spawner/spawn/check_nearby_entities/*
#declare score_holder $NearbyEntities

# キャッシュに存在する場合、取得する
    execute if data storage asset:spawner NearbyEntitiesCache store result score $NearbyEntities Temporary run data get storage asset:spawner NearbyEntitiesCache

# キャッシュに存在しない場合、素直に distance から取得する
    execute unless data storage asset:spawner NearbyEntitiesCache run function asset_manager:spawner/spawn/check_nearby_entities/from_selector.m with storage asset:spawner Args

# 最大召喚数を超えている場合は fail する
    execute unless score $NearbyEntities Temporary < $MaxNearbyEntities Temporary run return fail

# 取得した結果をインクリメントしてキャッシュに upsert する
    scoreboard players add $NearbyEntities Temporary 1
    execute store result storage asset:spawner NearbyEntitiesCache int 1 run scoreboard players get $NearbyEntities Temporary

# リセット
    scoreboard players reset $NearbyEntities Temporary

return 1
