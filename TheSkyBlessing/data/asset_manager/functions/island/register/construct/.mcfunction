#> asset_manager:island/register/construct/
# @within function world_manager:nexus_loader/try_load_asset/construct.m

# 呪われた神器の本体
    summon item_display ~ ~ ~ {Tags:["Object","CursedArtifact","CursedArtifactInit","Uninterferable"],item:{id:"stick",Count:1b,tag:{CustomModelData:20100}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.28f,1.28f,1.28f],translation:[0f,0.628f,0f]}}
    setblock ~ ~ ~ air
# データの適用
    execute as @e[type=item_display,tag=CursedArtifactInit,distance=..0.01,limit=1] run function asset_manager:island/register/construct/set_data
