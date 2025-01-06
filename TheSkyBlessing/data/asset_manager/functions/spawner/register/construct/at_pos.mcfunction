#> asset_manager:spawner/register/construct/at_pos
#
#
#
# @within function asset_manager:spawner/register/construct/m

# スポナーの本体を作成する
    summon item_display ~ ~0.5 ~ {Tags:["Object","Spawner","SpawnerInit","Uninterferable"],item:{id:"ender_eye",Count:1b},billboard:"center",brightness:{sky:15,block:15},transformation:{scale:[0.8f,0.8f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f]},interpolation_duration:4}
# ブロック設置
    setblock ~ ~ ~ barrier
# データ設定
    execute positioned ~ ~0.5 ~ as @e[type=item_display,tag=SpawnerInit,distance=..0.01,limit=1] run function asset_manager:spawner/register/construct/set_data
