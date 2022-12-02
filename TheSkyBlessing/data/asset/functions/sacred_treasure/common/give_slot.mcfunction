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
    execute if data storage asset:context {Slot:1} run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:2} run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:3} run item replace entity @s armor.feet from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:4} run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:5} run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if data storage asset:context {Slot:6} run item replace entity @s armor.head from block 10000 0 10000 container.0

# リセット
    scoreboard players reset $Slot Temporary