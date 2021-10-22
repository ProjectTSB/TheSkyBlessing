#> asset_manager:spawner/spawn/single
#
# 再帰的にMobを($SpawnCount)体召喚します
#
# @within function
#   asset_manager:spawner/spawn/
#   asset_manager:spawner/spawn/single

# 座標
    summon marker ~ ~ ~ {Tags:["SpawnMarker"]}
    execute as @e[type=marker,tag=SpawnMarker,distance=..0.01] run function asset_manager:spawner/spawn/set_position
# 召喚
    execute store result storage api: Argument.ID int 1 run scoreboard players get $MobID Temporary
    execute at @e[type=marker,tag=SpawnMarker,distance=..100] align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run particle poof ~ ~ ~ 0.3 0.3 0.3 0 10 normal
    execute at @e[type=marker,tag=SpawnMarker,distance=..100] align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run function api:mob/summon
# リセット
    kill @e[type=marker,tag=SpawnMarker,distance=..100]
# 召喚数を1減らす
    scoreboard players remove $SpawnCount Temporary 1
# まだ召喚する必要があるなら召喚するMobをランダムに選択する
    execute if score $SpawnCount Temporary matches 1.. run function asset_manager:spawner/spawn/choose_mob_id/
# まだ召喚する必要があるなら周囲のEntity数を取得する
    execute if score $SpawnCount Temporary matches 1.. run function asset_manager:spawner/spawn/nearby_entities/get
# まだ召喚する必要があるなら再帰
    execute if score $SpawnCount Temporary matches 1.. if score $NearbyEntities Temporary < $MaxNearbyEntities Temporary run function asset_manager:spawner/spawn/single