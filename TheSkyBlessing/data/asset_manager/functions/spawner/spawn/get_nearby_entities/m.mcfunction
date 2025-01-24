#> asset_manager:spawner/spawn/get_nearby_entities/m
#
# SpawnRangeの範囲内に居る同IDのMobの数を取得する
#
# @input args
#   MobID: int
# @within function asset_manager:spawner/spawn/single

# キャッシュに存在する場合、取得する
    $execute if data storage asset:spawner NearbyEntitiesCache.$(MobID) store result score $NearbyEntities Temporary run data get storage asset:spawner NearbyEntitiesCache.$(MobID)

# キャッシュに存在しない場合、素直に distance から取得する
    execute unless data storage asset:spawner NearbyEntitiesCache.$(MobID) run function asset_manager:spawner/spawn/get_nearby_entities/from_selector.m with storage asset:spawner Args

# 取得した結果をインクリメントしてキャッシュに upsert する
    scoreboard players add $NearbyEntities Temporary 1
    $execute store result storage asset:spawner NearbyEntitiesCache.$(MobID) int 1 run scoreboard players get $NearbyEntities Temporary
    scoreboard players remove $NearbyEntities Temporary 1
