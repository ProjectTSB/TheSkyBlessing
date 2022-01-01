#> asset:spawner/common/register
#
#
#
# @within function asset:spawner/*/register

# パラメータチェック
    execute unless data storage asset:spawner ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:spawner SpawnPotentials run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" SpawnPotentials","color":"red"}]
    execute unless data storage asset:spawner HP run data modify storage asset:spawner HP set value 2147483647
    execute unless data storage asset:spawner SpawnCount run data modify storage asset:spawner SpawnCount set value 3
    execute unless data storage asset:spawner SpawnRange run data modify storage asset:spawner SpawnRange set value 4
    execute unless data storage asset:spawner Delay run data modify storage asset:spawner Delay set value 20
    execute unless data storage asset:spawner MinSpawnDelay run data modify storage asset:spawner MinSpawnDelay set value 100
    execute unless data storage asset:spawner MaxSpawnDelay run data modify storage asset:spawner MaxSpawnDelay set value 400
    execute unless data storage asset:spawner MaxNearbyEntities run data modify storage asset:spawner MaxNearbyEntities set value 6
    execute unless data storage asset:spawner RequiredPlayerRange run data modify storage asset:spawner RequiredPlayerRange set value 16
# 登録
    function asset_manager:spawner/register/
# リセット
    data remove storage asset:spawner SpawnPotentials
    data remove storage asset:spawner HP
    data remove storage asset:spawner SpawnCount
    data remove storage asset:spawner SpawnRange
    data remove storage asset:spawner Delay
    data remove storage asset:spawner MinSpawnDelay
    data remove storage asset:spawner MaxSpawnDelay
    data remove storage asset:spawner MaxNearbyEntities
    data remove storage asset:spawner RequiredPlayerRange