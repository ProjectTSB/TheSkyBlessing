#> asset_manager:sacred_treasure/data/current/update/when_modified/hotbar
#
#
#
# @within function
#   asset_manager:sacred_treasure/data/current/update/
#   asset_manager:sacred_treasure/data/current/update/when_modified/non-hotbar

# 設定
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:0b} run data modify storage asset:context Items.hotbar[{Slot:0b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:1b} run data modify storage asset:context Items.hotbar[{Slot:1b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:2b} run data modify storage asset:context Items.hotbar[{Slot:2b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:3b} run data modify storage asset:context Items.hotbar[{Slot:3b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:4b} run data modify storage asset:context Items.hotbar[{Slot:4b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:5b} run data modify storage asset:context Items.hotbar[{Slot:5b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:6b} run data modify storage asset:context Items.hotbar[{Slot:6b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:7b} run data modify storage asset:context Items.hotbar[{Slot:7b}] set from storage asset:sacred_treasure ProcessedItem
    execute if data storage asset:sacred_treasure {SpecificTargetSlot:8b} run data modify storage asset:context Items.hotbar[{Slot:8b}] set from storage asset:sacred_treasure ProcessedItem
# リセット
    data remove storage asset:sacred_treasure SpecificTargetSlot