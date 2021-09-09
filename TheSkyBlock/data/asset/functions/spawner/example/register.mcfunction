#> asset:spawner/example/register
#
#
#
# @within function asset:spawner/example/

# SpawnPotentials(int | int[] | ({ Weight: int, Id: int })[]) MobAssetのIDを指定する
    data modify storage asset:spawner SpawnPotentials set value [{Id:2147483647,Weight:4},{Id:5,Weight:1}]
# 一度に召喚する数 (int)
    data modify storage asset:spawner SpawnCount set value 5
# 動作範囲 (int) この範囲にプレイヤーが存在するとき、Mobの召喚を開始する
    data modify storage asset:spawner SpawnRange set value 8
# 初回召喚時間 (int)
    data modify storage asset:spawner Delay set value 20
# 最低召喚間隔 (int)
    data modify storage asset:spawner MinSpawnDelay set value 80
# 最大召喚間隔 (int)
    data modify storage asset:spawner MaxSpawnDelay set value 200
# 近くのエンティティの最大数 (int)
    data modify storage asset:spawner MaxNearbyEntities set value 10
# この範囲にプレイヤーが存在するとき、Mobの召喚を開始する // distance <= 100
    data modify storage asset:spawner RequiredPlayerRange set value 10

function asset:spawner/common/register