#> asset_manager:spawner/register/
#
# スポナーの実体を召喚しデータ適用処理に投げる
#
# @within function asset:spawner/common/register

# スポナーの本体 // 機会があれば見た目を変えれるようにCMDを振っておく
    summon item_display ~ ~0.5 ~ {Tags:["Object","Spawner","SpawnerInit","Uninterferable"],item:{id:"ender_eye",Count:1b},billboard:"center",brightness:{sky:15,block:15},transformation:{scale:[0.8f,0.8f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    setblock ~ ~ ~ barrier
# データの適用
    execute positioned ~ ~0.5 ~ as @e[type=item_display,tag=SpawnerInit,distance=..0.01,limit=1] run function asset_manager:spawner/register/set_data
