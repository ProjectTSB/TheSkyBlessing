#> api:inventory/core/clear/remove/
# @within function api:inventory/clear

# 処理
    execute if data storage lib: Array[0] run function api:inventory/core/clear/remove/map
# 0-26
    data modify block 10000 0 10000 Items set from storage api: NewInv
    loot replace entity @s hotbar.0 27 mine 10000 0 10000 debug_stick
# 27-35
    data modify storage api: Items set value []
    data modify storage api: Items append from storage api: NewInv[{Slot:27b}]
    data modify storage api: Items[{Slot:27b}].Slot set value 0b
    data modify storage api: Items append from storage api: NewInv[{Slot:28b}]
    data modify storage api: Items[{Slot:28b}].Slot set value 1b
    data modify storage api: Items append from storage api: NewInv[{Slot:29b}]
    data modify storage api: Items[{Slot:29b}].Slot set value 2b
    data modify storage api: Items append from storage api: NewInv[{Slot:30b}]
    data modify storage api: Items[{Slot:30b}].Slot set value 3b
    data modify storage api: Items append from storage api: NewInv[{Slot:31b}]
    data modify storage api: Items[{Slot:31b}].Slot set value 4b
    data modify storage api: Items append from storage api: NewInv[{Slot:32b}]
    data modify storage api: Items[{Slot:32b}].Slot set value 5b
    data modify storage api: Items append from storage api: NewInv[{Slot:33b}]
    data modify storage api: Items[{Slot:33b}].Slot set value 6b
    data modify storage api: Items append from storage api: NewInv[{Slot:34b}]
    data modify storage api: Items[{Slot:34b}].Slot set value 7b
    data modify storage api: Items append from storage api: NewInv[{Slot:35b}]
    data modify storage api: Items[{Slot:35b}].Slot set value 8b
    execute if data storage api: Items[0] run data modify block 10000 0 10000 Items set from storage api: Items
    execute if data storage api: Items[0] run loot replace entity @s inventory.18 9 mine 10000 0 10000 debug_stick
# 足
    data modify storage api: Items set value []
    data modify storage api: Items append from storage api: NewInv[{Slot:100b}]
    data modify storage api: Items[{Slot:100b}].Slot set value 0b
    execute if data storage api: Items[0] run data modify block 10000 0 10000 Items set from storage api: Items
    execute if data storage api: Items[0] run loot replace entity @s armor.feet 1 mine 10000 0 10000 debug_stick
# 脚
    data modify storage api: Items set value []
    data modify storage api: Items append from storage api: NewInv[{Slot:101b}]
    data modify storage api: Items[{Slot:101b}].Slot set value 0b
    execute if data storage api: Items[0] run data modify block 10000 0 10000 Items set from storage api: Items
    execute if data storage api: Items[0] run loot replace entity @s armor.legs 1 mine 10000 0 10000 debug_stick
# 胸
    data modify storage api: Items set value []
    data modify storage api: Items append from storage api: NewInv[{Slot:102b}]
    data modify storage api: Items[{Slot:102b}].Slot set value 0b
    execute if data storage api: Items[0] run data modify block 10000 0 10000 Items set from storage api: Items
    execute if data storage api: Items[0] run loot replace entity @s armor.chest 1 mine 10000 0 10000 debug_stick
# 頭
    data modify storage api: Items set value []
    data modify storage api: Items append from storage api: NewInv[{Slot:103b}]
    data modify storage api: Items[{Slot:103b}].Slot set value 0b
    execute if data storage api: Items[0] run data modify block 10000 0 10000 Items set from storage api: Items
    execute if data storage api: Items[0] run loot replace entity @s armor.head 1 mine 10000 0 10000 debug_stick
# オフハンド
    data modify storage api: Items set value []
    data modify storage api: Items append from storage api: NewInv[{Slot:-106b}]
    data modify storage api: Items[{Slot:-106b}].Slot set value 0b
    execute if data storage api: Items[0] run data modify block 10000 0 10000 Items set from storage api: Items
    execute if data storage api: Items[0] run loot replace entity @s weapon.offhand 1 mine 10000 0 10000 debug_stick
# リセット
    data remove storage api: NewInv
    data remove storage api: Items