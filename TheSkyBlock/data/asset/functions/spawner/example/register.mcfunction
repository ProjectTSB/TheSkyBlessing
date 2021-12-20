#> asset:spawner/example/register
#
#
#
# @within function asset:spawner/example/

# ID (int)
    data modify storage asset:spawner ID set value 2147483647
# 体力 (int) このスポナーから召喚されたMobがN体殺されると破壊されるか
    data modify storage asset:spawner HP set value 1
# SpawnPotentials(int | int[] | ({ Weight: int, Id: int })[]) MobAssetのIDを指定する
    data modify storage asset:spawner SpawnPotentials set value 2147483647
# 一度に召喚する数 (int)
    data modify storage asset:spawner SpawnCount set value 1
# 動作範囲 (int) この範囲にプレイヤーが存在するとき、Mobの召喚を開始する
    data modify storage asset:spawner SpawnRange set value 8
# 初回召喚時間 (int)
    data modify storage asset:spawner Delay set value 1
# 最低召喚間隔 (int)
    data modify storage asset:spawner MinSpawnDelay set value 2
# 最大召喚間隔 (int)
    data modify storage asset:spawner MaxSpawnDelay set value 2
# 近くのエンティティの最大数 (int)
    data modify storage asset:spawner MaxNearbyEntities set value 1
# この範囲にプレイヤーが存在するとき、Mobの召喚を開始する // distance <= 100
    data modify storage asset:spawner RequiredPlayerRange set value 10

function asset:spawner/common/register