#> asset_manager:spawner/spawn/
#
# Mobを召喚する
#
# @within function asset_manager:spawner/tick/

#> Temp
# @private
    #declare score_holder $SpawnDelayBound
    #declare score_holder $NextDelay

# 炎パーティクル
    particle flame ~ ~0.1 ~ 0.3 0.3 0.3 0 10
# スポナーデータの取得
    function oh_my_dat:please
    execute store result storage asset:spawner Args.SpawnerID int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.ID
    data modify storage asset:spawner SpawnPotentials set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.SpawnPotentials
    execute store result score $SpawnPotentialsWeightSum Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.SpawnPotentialsWeightSum
    execute store result score $PosX Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.Pos[0] 100
    execute store result score $PosY Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.Pos[1] 100
    execute store result score $PosZ Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.Pos[2] 100
    execute store result score $MinSpawnDelay Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.MinSpawnDelay
    execute store result score $MaxSpawnDelay Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.MaxSpawnDelay
    execute store result score $SpawnCount Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.SpawnCount
    execute store result score $SpawnRange Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.SpawnRange
    execute store result score $MaxNearbyEntities Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.MaxNearbyEntities
# 再帰的にMOBを召喚する
    function asset_manager:spawner/spawn/single/
# 召喚クールダウンを設定する (min + rng(0, max - min))
    scoreboard players operation $SpawnDelayBound Temporary = $MaxSpawnDelay Temporary
    scoreboard players operation $SpawnDelayBound Temporary -= $MinSpawnDelay Temporary
    execute unless score $SpawnDelayBound Temporary matches 0 store result score $NextDelay Temporary run function lib:random/
    execute unless score $SpawnDelayBound Temporary matches 0 run scoreboard players operation $NextDelay Temporary %= $SpawnDelayBound Temporary
    execute if score $SpawnDelayBound Temporary matches 0 run scoreboard players set $NextDelay Temporary 0
    scoreboard players operation $NextDelay Temporary += $MinSpawnDelay Temporary
    scoreboard players operation @s SpawnerCooldown = $NextDelay Temporary
# リセット
    data remove storage asset:spawner Args
    data remove storage asset:spawner NearbyEntitiesCache
    scoreboard players reset $SpawnDelayBound Temporary
    scoreboard players reset $SpawnPotentialsWeightSum Temporary
    scoreboard players reset $NextDelay Temporary
    scoreboard players reset $PosX Temporary
    scoreboard players reset $PosY Temporary
    scoreboard players reset $PosZ Temporary
    scoreboard players reset $MinSpawnDelay Temporary
    scoreboard players reset $MaxSpawnDelay Temporary
    scoreboard players reset $SpawnRange Temporary
    scoreboard players reset $SpawnCount Temporary
    scoreboard players reset $MaxNearbyEntities Temporary
