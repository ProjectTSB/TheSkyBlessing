#> asset_manager:artifact/data/current/update/
#
# Itemを元にcurrentデータを更新する
#
# @input storage asset:artifact ProcessedItem : SlottedItem
# @within function
#   asset_manager:artifact/use/item/update
#   asset_manager:artifact/use/item/break

# ターゲットスロットを設定する
    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run data modify storage asset:artifact SpecificTargetSlot set from storage asset:artifact ProcessedItem.Slot
    execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} store result storage asset:artifact SpecificTargetSlot byte 1 run data get storage asset:context SelectedItemSlot
# 存在するときの処理
    execute if data storage asset:artifact ProcessedItem if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function asset_manager:artifact/data/current/update/when_modified/hotbar
    execute if data storage asset:artifact ProcessedItem unless data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function asset_manager:artifact/data/current/update/when_modified/non-hotbar
# 削除されたときの処理
    execute unless data storage asset:artifact ProcessedItem if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function asset_manager:artifact/data/current/update/when_removed/hotbar
    execute unless data storage asset:artifact ProcessedItem unless data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function asset_manager:artifact/data/current/update/when_removed/non-hotbar
# リセット
    data remove storage asset:artifact ProcessedItem