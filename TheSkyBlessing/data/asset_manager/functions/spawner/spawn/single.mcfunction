#> asset_manager:spawner/spawn/single
#
# 再帰的にMobを($SpawnCount)体召喚します
#
# @within function
#   asset_manager:spawner/spawn/
#   asset_manager:spawner/spawn/single

# 召喚するMobをランダムに選択する
    function asset_manager:spawner/spawn/choose_mob_id/
# 周囲のEntity数を取得する
    function asset_manager:spawner/spawn/get_nearby_entities/m with storage asset:spawner Args
# 最大召喚数に達した場合は打ち切る
    execute unless score $NearbyEntities Temporary < $MaxNearbyEntities Temporary run return fail

# 座標
    summon marker ~ ~ ~ {Tags:["SpawnMarker"]}
    data modify storage lib: Argument.Bounds set value [[-1d,-1d],[-1d,-1d],[-1d,-1d]]
    execute store result storage lib: Argument.Bounds[][] double 1 run scoreboard players get $SpawnRange Temporary
    data modify storage lib: Argument.Bounds[1] set value [0d,2.0d]
    execute as @e[type=marker,tag=SpawnMarker,distance=..0.01] run function lib:spread_entity/
# 召喚
    data modify storage api: Argument.ID set from storage asset:spawner Args.MobID
    execute at @e[type=marker,tag=SpawnMarker,distance=..100] align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run particle poof ~ ~ ~ 0.3 0.3 0.3 0 10 normal
    execute at @e[type=marker,tag=SpawnMarker,distance=..100] align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run function api:mob/summon
# リセット
    data remove storage api: Argument.ID
    kill @e[type=marker,tag=SpawnMarker,distance=..100]
# 召喚数を1減らす
    scoreboard players remove $SpawnCount Temporary 1
# まだ召喚する必要があるなら再帰
    execute if score $SpawnCount Temporary matches 1.. run function asset_manager:spawner/spawn/single
