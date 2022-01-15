#> api:inventory/refer_selected_item_slot/replace_air
#
# 実行者の対象スロットをairでreplace
#
# @input storage api: SelectedItemSlot: int
# @api

execute if data storage api: {SelectedItemSlot:0} run item replace entity @s hotbar.0 with air
execute if data storage api: {SelectedItemSlot:1} run item replace entity @s hotbar.1 with air
execute if data storage api: {SelectedItemSlot:2} run item replace entity @s hotbar.2 with air
execute if data storage api: {SelectedItemSlot:3} run item replace entity @s hotbar.3 with air
execute if data storage api: {SelectedItemSlot:4} run item replace entity @s hotbar.4 with air
execute if data storage api: {SelectedItemSlot:5} run item replace entity @s hotbar.5 with air
execute if data storage api: {SelectedItemSlot:6} run item replace entity @s hotbar.6 with air
execute if data storage api: {SelectedItemSlot:7} run item replace entity @s hotbar.7 with air
execute if data storage api: {SelectedItemSlot:8} run item replace entity @s hotbar.8 with air