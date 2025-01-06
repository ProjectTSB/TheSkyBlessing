#> asset_manager:island/register/construct/at_pos
#
#
#
# @within function asset_manager:island/register/construct/m

# 呪われた神器の本体
    summon armor_stand ~ ~ ~ {Tags:["Object","CursedArtifact","CursedArtifactInit","Uninterferable"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:20100}}]}
    setblock ~ ~ ~ air
# データの適用
    execute as @e[type=armor_stand,tag=CursedArtifactInit,distance=..0.01,limit=1] run function asset_manager:island/register/construct/set_data
