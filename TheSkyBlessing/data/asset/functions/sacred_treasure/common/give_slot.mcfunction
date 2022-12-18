#> asset:sacred_treasure/common/give_slot
#
# 神器を直接特定slotにgiveします
#
# @within function asset:sacred_treasure/common/give

# 指定なし
    execute unless data storage asset:context Slot run loot give @s mine 10000 0 10000 debug_stick

# アイテムを退避
    execute if data storage asset:context {Slot:"mainhand"} run data modify storage asset:context Evacuate set from entity @s SelectedItem
    execute if data storage asset:context {Slot:"offhand"} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:-106b}]
    execute if data storage asset:context {Slot:"feet"} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:100b}]
    execute if data storage asset:context {Slot:"legs"} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:101b}]
    execute if data storage asset:context {Slot:"chest"} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:102b}]
    execute if data storage asset:context {Slot:"head"} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:103b}]

# slot指定give
    execute if data storage asset:context {Slot:"mainhand"} run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"offhand"} run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"feet"} run item replace entity @s armor.feet from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"legs"} run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"chest"} run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:"head"} run item replace entity @s armor.head from block 10000 0 10000 container.0

# 退避させたアイテムを戻す
    execute if data storage asset:context Evacuate run data modify storage asset:context Evacuate.Slot set value 0b
    execute if data storage asset:context Evacuate run data modify block 10000 0 10000 Items[{Slot:0b}] set from storage asset:context Evacuate
    execute if data storage asset:context Evacuate run loot give @s mine 10000 0 10000 debug_stick

# リセット
    data remove storage asset:context Evacuate