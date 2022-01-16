#> lib:damage/core/get_protection/player
#
# プレイヤーの防具のProtectionを軽量に取得します
#
# @within function lib:damage/core/get_protection/

function api:data_get/inventory
data modify storage lib: Protection append from storage api: Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
data modify storage lib: Protection append from storage api: Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
data modify storage lib: Protection append from storage api: Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:protection"}].lvl
data modify storage lib: Protection append from storage api: Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:protection"}].lvl