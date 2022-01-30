#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/
#
#
#
# @within function asset_manager:spawner/spawn/nearby_entities/get

scoreboard players set $NearbyEntities Temporary 0
execute if score $SpawnRange Temporary matches ..320 run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-32
execute if score $SpawnRange Temporary matches 330.. run function asset_manager:spawner/spawn/nearby_entities/get_from_selector/33-64
# 結果をキャッシュへ代入
    data modify storage asset:spawner NearbyEntitiesCache append value [-1,-1]
    execute store result storage asset:spawner NearbyEntitiesCache[-1][0] int 1 run scoreboard players get $MobID Temporary
    scoreboard players add $NearbyEntities Temporary 1
    execute store result storage asset:spawner NearbyEntitiesCache[-1][1] int 1 run scoreboard players get $NearbyEntities Temporary
    scoreboard players remove $NearbyEntities Temporary 1