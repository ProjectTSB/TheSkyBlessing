#> player_manager:lost_item/give_all/packing.minecart
#
# チェストトロッコのItems構造を作る処理
#
# @within function
#   player_manager:lost_item/give_all/minecart.summon
#   player_manager:lost_item/give_all/packing.minecart

# Chests -> MinecartItems
    data modify storage player_manager:lost_item MinecartItems append from storage player_manager:lost_item Chests[-1]
    data remove storage player_manager:lost_item Chests[-1]
# Slotの設定
    execute store result storage player_manager:lost_item MinecartItems[-1].Slot byte 1 run scoreboard players get $i Temporary
# ループ処理
    scoreboard players add $i Temporary 1
    execute if score $i Temporary < $27 Const if data storage player_manager:lost_item Chests[-1] run function player_manager:lost_item/give_all/packing.minecart