#> player_manager:lost_item/give_all/packing.user
#
# プレイヤーのロストしたアイテムをすべて梱包しChests配列に追加する処理
#
# @within function
#   player_manager:lost_item/give_all/
#   player_manager:lost_item/give_all/packing.user

# IDSetの取り出し
    execute store result score $ OhMyDatID run data get storage oh_my_dat: IDSet[-1]
    data remove storage oh_my_dat: IDSet[-1]
# セッション開ける
    function lib:array/session/open
# UserStorage呼び出し
    function oh_its_dat:please
# Arrayに移す
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems
# Chests構造へ梱包して追加
    execute if data storage lib: Array[0] run function player_manager:lost_item/give_all/packing.chest
# リセット
    function lib:array/session/close
# 明示的にstorageを綺麗にしておく
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems
# ループ処理
    execute if data storage oh_my_dat: IDSet[-1] run function player_manager:lost_item/give_all/packing.user