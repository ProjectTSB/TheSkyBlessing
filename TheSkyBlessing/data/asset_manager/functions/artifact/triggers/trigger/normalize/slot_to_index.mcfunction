#> asset_manager:artifact/triggers/trigger/normalize/slot_to_index
#
#
#
# @within function asset_manager:artifact/triggers/trigger/normalize/

execute if data storage asset:artifact CopiedItem{TargetSlot:"mainhand"} store result storage asset:artifact CopiedItem.InvSlot byte 1 run data get storage api: SelectedItemSlot
execute if data storage asset:artifact CopiedItem{TargetSlot: "offhand"} run data modify storage asset:artifact CopiedItem.InvSlot set value -106b
execute if data storage asset:artifact CopiedItem{TargetSlot:    "feet"} run data modify storage asset:artifact CopiedItem.InvSlot set value 100b
execute if data storage asset:artifact CopiedItem{TargetSlot:    "legs"} run data modify storage asset:artifact CopiedItem.InvSlot set value 101b
execute if data storage asset:artifact CopiedItem{TargetSlot:   "chest"} run data modify storage asset:artifact CopiedItem.InvSlot set value 102b
execute if data storage asset:artifact CopiedItem{TargetSlot:    "head"} run data modify storage asset:artifact CopiedItem.InvSlot set value 103b
execute if data storage asset:artifact CopiedItem{TargetSlot:  "hotbar"} store result storage asset:artifact CopiedItem.InvSlot byte 1 run scoreboard players get $SlotIndex Temporary
