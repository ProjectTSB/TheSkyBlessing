#> asset_manager:sacred_treasures/core/use/get_item_data
#
# TargetSlotを元にプレイヤーの神器データを取得する
#
# @input
#   as player
#   storage asset:sacred_treasure TargetSlot : Slot
# @output storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasures/core/use/*

execute if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run data modify storage asset:sacred_treasure Item set from entity @s SelectedItem
execute if data storage asset:sacred_treasure {TargetSlot:"offhand"} run data modify storage asset:sacred_treasure Item set from entity @s Inventory[{Slot:-106b}]
execute if data storage asset:sacred_treasure {TargetSlot:"feet"} run data modify storage asset:sacred_treasure Item set from entity @s Inventory[{Slot:100b}]
execute if data storage asset:sacred_treasure {TargetSlot:"legs"} run data modify storage asset:sacred_treasure Item set from entity @s Inventory[{Slot:101b}]
execute if data storage asset:sacred_treasure {TargetSlot:"chest"} run data modify storage asset:sacred_treasure Item set from entity @s Inventory[{Slot:102b}]
execute if data storage asset:sacred_treasure {TargetSlot:"head"} run data modify storage asset:sacred_treasure Item set from entity @s Inventory[{Slot:103b}]