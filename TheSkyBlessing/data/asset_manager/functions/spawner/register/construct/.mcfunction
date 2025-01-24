#> asset_manager:spawner/register/construct/
# @within function world_manager:nexus_loader/try_load_asset/construct.m

# スポナーの本体を作成する
    summon item_display ~ ~0.5 ~ {Tags:["Object","Spawner","SpawnerInit","Uninterferable"],item:{id:"ender_eye",Count:1b},billboard:"center",brightness:{sky:15,block:15},transformation:{scale:[0.8f,0.8f,0.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f]},interpolation_duration:4}
# スポナーの情報をテキストで表示
    summon text_display ~ ~1 ~ {billboard:"center",brightness:{sky:15,block:15},text:'[{"text":"MobID:"},{"nbt":"ID","storage":"asset:spawner"},{"text":"\\nHP:"},{"nbt":"HP","storage":"asset:spawner"},{"text":"\\n召喚数:"},{"nbt":"SpawnCount","storage":"asset:spawner"},{"text":"\\n召喚範囲:"},{"nbt":"SpawnRange","storage":"asset:spawner"},{"text":"\\n最小召喚遅延:"},{"nbt":"MinSpawnDelay","storage":"asset:spawner"},{"text":"\\n最大召喚遅延:"},{"nbt":"MaxSpawnDelay","storage":"asset:spawner"},{"text":"\\n最大召喚数:"},{"nbt":"MaxNearbyEntities","storage":"asset:spawner"},{"text":"\\n感知範囲:"},{"nbt":"RequiredPlayerRange","storage":"asset:spawner"}]'}
# ブロック設置
    setblock ~ ~ ~ barrier
# データ設定
    execute positioned ~ ~0.5 ~ as @e[type=item_display,tag=SpawnerInit,distance=..0.01,limit=1] run function asset_manager:spawner/register/construct/set_data
