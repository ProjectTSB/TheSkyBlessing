#> player_manager:keep_lost_item/give_all/packing.user
#
# プレイヤーのロストしたアイテムをすべて梱包しChests配列に追加する処理
#
# @within function
#   player_manager:keep_lost_item/give_all/give
#   player_manager:keep_lost_item/give_all/packing.user

# IDSetの取り出し
    execute store result score $ OhMyDatID run data get storage oh_my_dat: IDSet[-1]
    data remove storage oh_my_dat: IDSet[-1]
# UserStorage呼び出し
    function oh_its_dat:please
# Chests構造へ梱包して追加
    function player_manager:keep_lost_item/give_all/packing.chest
# 明示的にstorageを綺麗にしておく
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# ループ処理
    execute if data storage oh_my_dat: IDSet[-1] run function player_manager:keep_lost_item/give_all/packing.user