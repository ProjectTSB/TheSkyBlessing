#> player_manager:lost_item/give_all/minecart_to_chest_check
#
# LostItemChest -> Chestの移動を監視してkillやホッパーの加速を行う
#
# @within function
#   player_manager:lost_item/give_all/
#   player_manager:lost_item/give_all/minecart_to_chest_check

# ホッパー加速
    data modify block 2927 183 -1273 TransferCooldown set value 0b
    data modify block 2927 183 -1274 TransferCooldown set value 0b
    data modify block 2927 183 -1275 TransferCooldown set value 0b
# 中身が空の挿入用チェストをkill
    execute as @e[tag=LostItemChest,distance=..1,x=2927,y=184,z=-1273] unless data entity @s Items[0] run kill @s
# 挿入用チェストがまだ残っていたらループ
    execute if entity @e[tag=LostItemChest,distance=..1,x=2927,y=184,z=-1273,limit=1] run schedule function player_manager:lost_item/give_all/minecart_to_chest_check 1t