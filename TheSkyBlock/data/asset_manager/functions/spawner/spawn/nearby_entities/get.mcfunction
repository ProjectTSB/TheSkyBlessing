#> asset_manager:spawner/spawn/nearby_entities/get
#
# SpawnRangeの範囲内に居る同IDのMobの数を取得する
#
# @within function
#   asset_manager:spawner/spawn/
#   asset_manager:spawner/spawn/single

# キャッシュから取得を試みる(失敗した場合-1)
    function asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/
# キャッシュに存在しない場合素直にdistanceを二分探索し取得する
    execute if score $NearbyEntities Temporary matches -1 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/