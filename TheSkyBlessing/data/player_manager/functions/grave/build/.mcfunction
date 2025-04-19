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
    data modify storage player_manager:grave Args.Name set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage player_manager:grave Args.Rotation set from entity 0-0-0-0-0 Rotation
    execute align xz positioned ~0.5 ~ ~0.5 run function player_manager:grave/build/m with storage player_manager:grave Args
    data remove storage player_manager:grave Args
