#> asset_manager:spawner/register/
#
# スポナーの実体を召喚しデータ適用処理に投げる
#
# @within function asset:spawner/common/register

# スポナーの本体
    summon marker ~ ~ ~ {Tags:["Object","Spawner","SpawnerInit"]}
# データの適用
    execute as @e[type=marker,tag=SpawnerInit,distance=..0.01,limit=1] run function asset_manager:spawner/register/set_data