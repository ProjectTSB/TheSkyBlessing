#> asset_manager:island/register/
#
#
#
# @within function asset:island/common/register

# 呪われた神器の本体
    summon armor_stand ~ ~ ~ {Tags:["Object","CursedTreasure","CursedTreasureInit","Uninterferable"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"stick",Count:1b,tag:{CustomModelData:20100}}]}
    setblock ~ ~ ~ air
# データの適用
    execute as @e[type=armor_stand,tag=CursedTreasureInit,distance=..0.01,limit=1] run function asset_manager:island/register/set_data