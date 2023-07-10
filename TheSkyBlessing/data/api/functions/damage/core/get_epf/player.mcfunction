#> api:damage/core/get_epf/player
#
# プレイヤーの防具のProtectionを軽量に取得します
#
# @within function api:damage/core/get_epf/

function api:data_get/inventory
data modify storage api: Enchantments append from storage api: Inventory[{Slot:103b}].tag.Enchantments[]
data modify storage api: Enchantments append from storage api: Inventory[{Slot:102b}].tag.Enchantments[]
data modify storage api: Enchantments append from storage api: Inventory[{Slot:101b}].tag.Enchantments[]
data modify storage api: Enchantments append from storage api: Inventory[{Slot:100b}].tag.Enchantments[]