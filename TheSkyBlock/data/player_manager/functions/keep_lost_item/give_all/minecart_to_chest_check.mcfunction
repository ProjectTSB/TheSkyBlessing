#> player_manager:keep_lost_item/give_all/minecart_to_chest_check
#
# LostItemChest -> Chestの移動を監視してkillやホッパーの加速を行う
#
# @within function
#   player_manager:keep_lost_item/give_all/give
#   player_manager:keep_lost_item/give_all/minecart_to_chest_check

# ホッパー加速 //TODO チェストの座標
    data modify block 0 4 0 TransferCooldown set value 0b
# 中身が空の挿入用チェストをkill //TODO チェスト座標付近に範囲を絞る
    execute as @e[tag=LostItemChest] unless data entity @s Items[0] run kill @s
# 挿入用チェストがまだ残っていたらループ //TODO チェスト座標付近に範囲を絞る
    execute if entity @e[tag=LostItemChest] run schedule function player_manager:keep_lost_item/give_all/minecart_to_chest_check 1t