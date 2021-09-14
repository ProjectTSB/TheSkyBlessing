#> asset_manager:spawner/register/
#
# スポナーの実体を召喚しデータ適用処理に投げる
#
# @within function asset:spawner/common/register

# スポナーの本体 // 機会があれば見た目を変えれるようにCMDを振っておく
    summon snowball ~ ~0.4 ~ {Tags:["Object","Spawner","SpawnerInit","Uninterferable"],Item:{id:"ender_eye",Count:1b,tag:{CustomModelData:1}},NoGravity:1b}
    setblock ~ ~ ~ barrier
# データの適用
    execute positioned ~ ~0.4 ~ as @e[type=snowball,tag=SpawnerInit,distance=..0.01,limit=1] run function asset_manager:spawner/register/set_data