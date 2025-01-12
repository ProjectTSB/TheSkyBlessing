#> player_manager:grave/take_items
#
#
#
# @within function
#   core:handler/death
#   player_manager:grave/build/

# IDをIDSetに追加
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[-1] run data modify storage oh_my_dat: IDSet append value -2147483648
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[-1] store result storage oh_my_dat: IDSet[-1] int 1 run scoreboard players get @s OhMyDatID
# Temp -> UserStorage
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GraveStoreItems
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].GraveStoreItems

# タグ削除
    tag @s remove HasGrave
