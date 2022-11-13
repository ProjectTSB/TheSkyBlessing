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

# slot指定give
    execute if data storage asset:context {Slot:1} if entity @s[nbt={SelectedItem:{}}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:1} unless entity @s[nbt={SelectedItem:{}}] run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:2} if entity @s[nbt={Inventory:[{Slot:-106b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:2} unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run loot replace entity @s weapon.offhand mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:3} if entity @s[nbt={Inventory:[{Slot:100b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:3} unless entity @s[nbt={Inventory:[{Slot: 100b}]}] run loot replace entity @s armor.feet mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:4} if entity @s[nbt={Inventory:[{Slot:101b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:4} unless entity @s[nbt={Inventory:[{Slot:101b}]}] run loot replace entity @s armor.legs mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:5} if entity @s[nbt={Inventory:[{Slot:102b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:5} unless entity @s[nbt={Inventory:[{Slot:102b}]}] run loot replace entity @s armor.chest mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:6} if entity @s[nbt={Inventory:[{Slot:103b}]}] run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Slot:6} unless entity @s[nbt={Inventory:[{Slot:103b}]}] run loot replace entity @s armor.head mine 10000 0 10000 debug_stick

# リセット
    scoreboard players reset $Slot Temporary