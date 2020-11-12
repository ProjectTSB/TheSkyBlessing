#> asset_manager:sacred_treasure/core/set_id
#
# 神器のIDを取得します
#
# @input as player
# @output storage asset:id
#   mainhand : int
#   offhand : int
#   feet : int
#   legs : int
#   chest : int
#   head : int
# @within asset_manager:sacred_treasure/triggers/*

data modify storage asset:id mainhand set value -1
data modify storage asset:id offhand set value -1
data modify storage asset:id feet set value -1
data modify storage asset:id legs set value -1
data modify storage asset:id chest set value -1
data modify storage asset:id head set value -1

data modify storage asset:id mainhand set from entity @s SelectedItem.tag.TSB.ID
data modify storage asset:id offhand set from entity @s Inventory[{Slot:-106b}].tag.TSB.ID
data modify storage asset:id feet set from entity @s Inventory[{Slot:100b}].tag.TSB.ID
data modify storage asset:id legs set from entity @s Inventory[{Slot:101b}].tag.TSB.ID
data modify storage asset:id chest set from entity @s Inventory[{Slot:102b}].tag.TSB.ID
data modify storage asset:id head set from entity @s Inventory[{Slot:103b}].tag.TSB.ID