#> asset:sacred_treasure/common/give_slot
#
# 神器を直接特定slotにgiveします
#
# @within function asset:sacred_treasure/common/give

#> SlotID
# @private
    #define score_holder $Slot

# validation
    execute if data storage asset:context Slot store result score $Slot Temporary run data get storage asset:context Slot 1
    execute unless score $Slot Temporary matches 1..6 run loot give @s mine 10000 0 10000 debug_stick

# アイテムを退避
    execute if data storage asset:context {Slot:1} run data modify storage asset:context Evacuate set from entity @s SelectedItem
    execute if data storage asset:context {Slot:2} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:-106b}]
    execute if data storage asset:context {Slot:3} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:100b}]
    execute if data storage asset:context {Slot:4} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:101b}]
    execute if data storage asset:context {Slot:5} run data modify storage asset:context Evacuate set from entity @s Inventory[{Slot:102b}]
    execute if data storage asset:context {Slot:6} run data modify storage asset:context Evacuate set from entity @s Inventory[{SLot:103b}]

# slot指定give
    execute if data storage asset:context {Slot:1} run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:2} run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:3} run item replace entity @s armor.feet from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:4} run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:5} run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:6} run item replace entity @s armor.head from block 10000 0 10000 container.0

# 退避させたアイテムを戻す
    execute if data storage asset:context Evacuate run data modify block 10000 0 10000 container.0 set from storage asset:context Evacuate
    execute if data storage asset:context Evacuate run loot give @s mine 10000 0 10000 debug_stick

# リセット
    scoreboard players reset $Slot Temporary
    data remove storage asset:context Evacuate