#> player_manager:keep_lost_item/give_all/packing.chest
#
# [0-26]をChests[0:[0-26]-n:[0-26]]に移行する処理
#
# @within function
#   player_manager:keep_lost_item/give_all/packing.user
#   player_manager:keep_lost_item/give_all/packing.chest

#> Temp
# @within function
#   player_manager:keep_lost_item/give_all/packing.chest
#   player_manager:keep_lost_item/give_all/packing.item
    #declare score_holder $i

# 梱包処理
    # チェストのAppend
        data modify storage player_manager:keep_lost_item/give_all/give Chests append value {id:"chest",Count:1b,tag:{BlockEntityTag:{Items:[]}}}
    # Name適用処理
        function player_manager:keep_lost_item/give_all/name_to_textcomponent
    # ItemAppend
        scoreboard players set $i Temporary 0
        function player_manager:keep_lost_item/give_all/packing.item
        scoreboard players reset $i Temporary
# ループ処理
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items[-1] run function player_manager:keep_lost_item/give_all/packing.chest