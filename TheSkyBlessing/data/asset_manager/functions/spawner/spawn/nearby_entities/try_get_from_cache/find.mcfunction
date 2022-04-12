#> asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/find
#
# 再帰的にキャッシュを検索する
#
# @within function
#   asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/
#   asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/find

#> KeyID
# @private
    #declare score_holder $KeyID

# キャッシュKeyを取得
    execute store result score $KeyID Temporary run data get storage asset:spawner NearbyEntitiesCache[-1][0]
# 該当するIDの場合はデータを取得し加算して返す
    execute if score $KeyID Temporary = $MobID Temporary store result score $NearbyEntities Temporary run data get storage asset:spawner NearbyEntitiesCache[-1][1]
    execute if score $KeyID Temporary = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
    execute if score $KeyID Temporary = $MobID Temporary store result storage asset:spawner NearbyEntitiesCache[-1][1] int 1 run scoreboard players get $NearbyEntities Temporary
    execute if score $KeyID Temporary = $MobID Temporary run scoreboard players remove $NearbyEntities Temporary 1
# リセット
    scoreboard players reset $KeyID Temporary
# 見つかっていない かつ 要素がまだあるなら再帰
    execute if score $NearbyEntities Temporary matches -1 run data modify storage asset:spawner Temp append from storage asset:spawner NearbyEntitiesCache[-1]
    execute if score $NearbyEntities Temporary matches -1 run data remove storage asset:spawner NearbyEntitiesCache[-1]
    execute if score $NearbyEntities Temporary matches -1 if data storage asset:spawner NearbyEntitiesCache[-1] run function asset_manager:spawner/spawn/nearby_entities/try_get_from_cache/find