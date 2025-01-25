#> player_manager:grave/build/
#
#
#
# @within function core:handler/death

#> Private
# @within function player_manager:grave/build/*
#declare tag GraveInit

# UserStorage呼び出し
    function oh_my_dat:please

# インベントリから取得する [api: Inventory] -> [player_manager:grave Temp]
    data modify storage player_manager:grave Temp set from storage api: Inventory

# 加工する [player_manager:grave Temp] -> [player_manager:grave Temp]
    function player_manager:grave/build/process_item
# Temp -> UserStorage
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GraveStoreItems set from storage player_manager:grave Temp

# インベントリclear
    clear @s

# リセット
    data remove storage player_manager:grave Temp

# SoulBound のアイテムをインベントリに戻す
    execute if data storage api: Inventory[{tag:{TSB:{SoulBound:true}}}] run function player_manager:common/regive_soulbounds

# 奈落ならやっぱり墓作るのやめてそのまま没取する
    execute if predicate lib:is_deep_void run return run function player_manager:grave/take_items

# タグ付与
    tag @s add HasGrave

# 墓を作る
    summon item_display ~ ~ ~ {Tags:["Grave","GraveInit","Object","Uninterferable"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20346}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}

    execute as @e[type=item_display,tag=GraveInit,distance=..0.1,limit=1] run function player_manager:grave/build/set_data
