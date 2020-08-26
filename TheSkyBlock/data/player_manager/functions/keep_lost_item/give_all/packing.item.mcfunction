#> player_manager:keep_lost_item/give_all/packing.item
#
# storage[n]から[0-26]に移行する処理
#
# @within function
#   player_manager:keep_lost_item/give_all/packing.chest
#   player_manager:keep_lost_item/give_all/packing.item

# 個人ストレージからの移行
    data modify storage player_manager:keep_lost_item/give_all/give Chests[-1].tag.BlockEntityTag.Items append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items[-1]
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items[-1]
# Slotの設定
    execute store result storage player_manager:keep_lost_item/give_all/give Chests[-1].tag.BlockEntityTag.Items[-1].Slot byte 1 run scoreboard players get $i Temporary
# ループ処理
    scoreboard players add $i Temporary 1
    execute if score $i Temporary < $27 Const if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items[-1] run function player_manager:keep_lost_item/give_all/packing.item