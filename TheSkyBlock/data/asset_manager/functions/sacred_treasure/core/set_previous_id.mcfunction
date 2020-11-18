#> asset_manager:sacred_treasure/core/set_previous_id
#
# 前tickのIDを取得する
#
# @within function asset_manager:sacred_treasure/core/tick

function asset_manager:sacred_treasure/core/reset_previous_id

data modify storage asset:id Previous.mainhand set from entity @s SelectedItem.tag.TSB.ID
data modify storage asset:id Previous.offhand set from entity @s Inventory[{Slot:-106b}].tag.TSB.ID
data modify storage asset:id Previous.feet set from entity @s Inventory[{Slot:100b}].tag.TSB.ID
data modify storage asset:id Previous.legs set from entity @s Inventory[{Slot:101b}].tag.TSB.ID
data modify storage asset:id Previous.chest set from entity @s Inventory[{Slot:102b}].tag.TSB.ID
data modify storage asset:id Previous.head set from entity @s Inventory[{Slot:103b}].tag.TSB.ID