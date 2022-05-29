#> asset_manager:sacred_treasure/data/current/update/
#
# Itemを元にcurrentデータを更新する
#
# @input storage asset:sacred_treasure ProcessedItem : SlottedItem
# @within function
#   asset_manager:sacred_treasure/use/item/update
#   asset_manager:sacred_treasure/use/item/break

# ターゲットスロットを設定する
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run data modify storage asset:sacred_treasure SpecificTargetSlot set from storage asset:sacred_treasure ProcessedItem.Slot
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} store result storage asset:sacred_treasure SpecificTargetSlot byte 1 run data get storage asset:context SelectedItemSlot
# 存在するときの処理
    execute if data storage asset:sacred_treasure ProcessedItem if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function asset_manager:sacred_treasure/data/current/update/when_modified/hotbar
    execute if data storage asset:sacred_treasure ProcessedItem unless data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function asset_manager:sacred_treasure/data/current/update/when_modified/non-hotbar
# 削除されたときの処理
    execute unless data storage asset:sacred_treasure ProcessedItem if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function asset_manager:sacred_treasure/data/current/update/when_removed/hotbar
    execute unless data storage asset:sacred_treasure ProcessedItem unless data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function asset_manager:sacred_treasure/data/current/update/when_removed/non-hotbar
# リセット
    data remove storage asset:sacred_treasure ProcessedItem