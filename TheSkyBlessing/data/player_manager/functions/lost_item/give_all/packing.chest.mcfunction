#> player_manager:lost_item/give_all/packing.chest
#
# [0-26]をChests[0:[0-26]-n:[0-26]]に移行する処理
#
# @within function
#   player_manager:lost_item/give_all/packing.user
#   player_manager:lost_item/give_all/packing.chest

# 梱包処理
    # チェストのAppend
        data modify storage player_manager:lost_item Chests append value {id:"chest",Count:1b}
    # Name適用処理
        function player_manager:lost_item/give_all/name_to_textcomponent
    # 梱包
        function lib:array/packing_chest
    # チェストに突っ込む
        data modify storage player_manager:lost_item Chests[-1].tag.BlockEntityTag.Items set from storage lib: Package
    # リセット
        data remove storage lib: Package
# ループ処理
    execute if data storage lib: Array[0] run function player_manager:lost_item/give_all/packing.chest