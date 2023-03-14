#> asset_manager:artifact/use/item/update
#
# アイテムを更新します
#
# @within function
#   asset_manager:artifact/use/item/*
#   asset_manager:artifact/use/item/has_remain

# CT設定
    function asset_manager:artifact/use/item/update_local_cooldown/
# データ更新処理
    data modify storage asset:artifact Name set from storage asset:artifact TargetItems[-1].tag.TSB.rawName
    # 残り回数が存在する場合
        execute if data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount run data modify storage asset:artifact Item set from storage asset:artifact TargetItems[-1]
        execute if data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/get_name/has_remain
        execute if data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount run data remove storage asset:artifact Item
    # 残り回数が存在しない場合
        execute unless data storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/get_name/
    # スロットをコピーしておく
        data modify storage asset:artifact CopiedSlot set from storage asset:artifact TargetItems[-1].Slot
    # shulker boxでデータを完成させる
        data remove storage asset:artifact TargetItems[-1].tag.display.Name
        data remove storage asset:artifact TargetItems[-1].Slot
        data modify block 10000 0 10000 Items[0] merge from storage asset:artifact TargetItems[-1]
    # storage側データ更新
        data modify storage asset:artifact TargetItems[-1] set from block 10000 0 10000 Items[0]
        execute if data storage asset:artifact CopiedSlot run data modify storage asset:artifact TargetItems[-1].Slot set from storage asset:artifact CopiedSlot
        execute unless data storage asset:artifact CopiedSlot run data remove storage asset:artifact TargetItems[-1].Slot
# 新しい神器で上書きする
    execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run data modify storage api: SelectedItemSlot set from storage asset:context SelectedItemSlot
    execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run function api:inventory/refer_selected_item_slot/replace_from_shulker_box
    execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} run loot replace entity @s weapon.offhand 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetDefaultSlot:"feet"} run loot replace entity @s armor.feet 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetDefaultSlot:"legs"} run loot replace entity @s armor.legs 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetDefaultSlot:"chest"} run loot replace entity @s armor.chest 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetDefaultSlot:"head"} run loot replace entity @s armor.head 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} store result storage api: SelectedItemSlot int 1 run data get storage asset:artifact TargetItems[-1].Slot
    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function api:inventory/refer_selected_item_slot/replace_from_shulker_box
# current更新
    data modify storage asset:artifact ProcessedItem set from storage asset:artifact TargetItems[-1]
    function asset_manager:artifact/data/current/update/
# リセット
    data remove storage asset:artifact Name
    data remove storage asset:artifact CopiedSlot