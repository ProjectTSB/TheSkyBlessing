#> asset_manager:sacred_treasure/data/current/update/when_modified
#
# Itemが存在するときの更新処理
#
# @within function asset_manager:sacred_treasure/data/current/update/

execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage asset:context Items.mainhand set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run data modify storage asset:context Items.offhand set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run data modify storage asset:context Items.feet set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run data modify storage asset:context Items.legs set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run data modify storage asset:context Items.chest set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run data modify storage asset:context Items.head set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:0b} run data modify storage asset:context Items.hotbar[{Slot:0b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:1b} run data modify storage asset:context Items.hotbar[{Slot:1b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:2b} run data modify storage asset:context Items.hotbar[{Slot:2b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:3b} run data modify storage asset:context Items.hotbar[{Slot:3b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:4b} run data modify storage asset:context Items.hotbar[{Slot:4b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:5b} run data modify storage asset:context Items.hotbar[{Slot:5b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:6b} run data modify storage asset:context Items.hotbar[{Slot:6b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:7b} run data modify storage asset:context Items.hotbar[{Slot:7b}] set from storage asset:sacred_treasure ProcessedItem
execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} if data storage asset:sacred_treasure ProcessedItem{Slob:8b} run data modify storage asset:context Items.hotbar[{Slot:8b}] set from storage asset:sacred_treasure ProcessedItem