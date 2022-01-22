#> asset_manager:spawner/spawn/nearby_entities/get
#
# SpawnRangeの範囲内に居る同IDのMobの数を取得する
#
# @within function
#   asset_manager:spawner/spawn/
#   asset_manager:spawner/spawn/single

# キャッシュが存在する場合取得を試みる(失敗した場合は-1のまま)
    scoreboard players set $NearbyEntities Temporary -1
    execute if data storage asset:spawner NearbyEntitiesCache[0] run function asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/

# キャッシュに存在しない場合素直にdistanceを二分探索し取得する
    execute if score $NearbyEntities Temporary matches -1 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/