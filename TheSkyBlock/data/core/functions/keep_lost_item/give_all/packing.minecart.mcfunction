#> core:keep_lost_item/give_all/packing.minecart
#
# チェストトロッコのItems構造を作る処理
#
# @within function
#   core:keep_lost_item/give_all/minecart.summon
#   core:keep_lost_item/give_all/packing.minecart

# Chests -> MinecarItems
    data modify storage core:keep_lost_item/give_all/give MinecartItems append from storage core:keep_lost_item/give_all/give Chests[-1]
    data remove storage core:keep_lost_item/give_all/give Chests[-1]
# Slotの設定
    execute store result storage core:keep_lost_item/give_all/give MinecartItems[-1].Slot byte 1 run scoreboard players get $i Temporary
# ループ処理
    scoreboard players add $i Temporary 1
    execute if score $i Temporary < $27 Const if data storage core:keep_lost_item/give_all/give Chests[-1] run function core:keep_lost_item/give_all/packing.minecart