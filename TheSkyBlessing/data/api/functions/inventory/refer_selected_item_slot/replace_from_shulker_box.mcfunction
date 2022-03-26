#> api:inventory/refer_selected_item_slot/replace_from_shulker_box
#
# ShulkerAの一つ目のアイテムを実行者の対象スロットにreplaceします
#
# @input storage api: SelectedItemSlot: int
# @api

execute if data storage api: {SelectedItemSlot:0} run loot replace entity @s hotbar.0 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:1} run loot replace entity @s hotbar.1 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:2} run loot replace entity @s hotbar.2 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:3} run loot replace entity @s hotbar.3 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:4} run loot replace entity @s hotbar.4 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:5} run loot replace entity @s hotbar.5 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:6} run loot replace entity @s hotbar.6 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:7} run loot replace entity @s hotbar.7 1 mine 10000 0 10000 debug_stick
execute if data storage api: {SelectedItemSlot:8} run loot replace entity @s hotbar.8 1 mine 10000 0 10000 debug_stick