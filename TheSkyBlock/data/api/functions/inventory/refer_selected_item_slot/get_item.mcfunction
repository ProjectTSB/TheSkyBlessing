#> api:inventory/refer_selected_item_slot/get_item
#
# Inventoryから対象スロットのアイテムを取得します
#
# @input storage api:
#   Inventory: SlottedItem
#   SelectedItemSlot: int
# @output storage api: Item
# @api

data modify storage api: Item set value {}

execute if data storage api: {SelectedItemSlot:0} run data modify storage api: Item set from storage api: Inventory[{Slot:0b}]
execute if data storage api: {SelectedItemSlot:1} run data modify storage api: Item set from storage api: Inventory[{Slot:1b}]
execute if data storage api: {SelectedItemSlot:2} run data modify storage api: Item set from storage api: Inventory[{Slot:2b}]
execute if data storage api: {SelectedItemSlot:3} run data modify storage api: Item set from storage api: Inventory[{Slot:3b}]
execute if data storage api: {SelectedItemSlot:4} run data modify storage api: Item set from storage api: Inventory[{Slot:4b}]
execute if data storage api: {SelectedItemSlot:5} run data modify storage api: Item set from storage api: Inventory[{Slot:5b}]
execute if data storage api: {SelectedItemSlot:6} run data modify storage api: Item set from storage api: Inventory[{Slot:6b}]
execute if data storage api: {SelectedItemSlot:7} run data modify storage api: Item set from storage api: Inventory[{Slot:7b}]
execute if data storage api: {SelectedItemSlot:8} run data modify storage api: Item set from storage api: Inventory[{Slot:8b}]
data remove storage api: Item.Slot