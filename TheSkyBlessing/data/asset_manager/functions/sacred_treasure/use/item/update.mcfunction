#> asset_manager:sacred_treasure/use/item/update
#
# アイテムを更新します
#
# @within function
#   asset_manager:sacred_treasure/use/item/*
#   asset_manager:sacred_treasure/use/item/has_remain

# CT設定
    function asset_manager:sacred_treasure/use/item/update_local_cooldown/
# データ更新処理
    data modify storage asset:sacred_treasure Name set from storage asset:sacred_treasure TargetItems[-1].tag.TSB.rawName
    # 残り回数が存在する場合
        execute if data storage asset:sacred_treasure TargetItems[-1].tag.TSB.RemainingCount run data modify storage asset:sacred_treasure Item set from storage asset:sacred_treasure TargetItems[-1]
        execute if data storage asset:sacred_treasure TargetItems[-1].tag.TSB.RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/get_name/has_remain
        execute if data storage asset:sacred_treasure TargetItems[-1].tag.TSB.RemainingCount run data remove storage asset:sacred_treasure Item
    # 残り回数が存在しない場合
        execute unless data storage asset:sacred_treasure TargetItems[-1].tag.TSB.RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/get_name/
    # スロットをコピーしておく
        data modify storage asset:sacred_treasure CopiedSlot set from storage asset:sacred_treasure TargetItems[-1].Slot
    # shulker boxでデータを完成させる
        data remove storage asset:sacred_treasure TargetItems[-1].tag.display.Name
        data remove storage asset:sacred_treasure TargetItems[-1].Slot
        data modify block 10000 0 10000 Items[0] merge from storage asset:sacred_treasure TargetItems[-1]
    # storage側データ更新
        data modify storage asset:sacred_treasure TargetItems[-1] set from block 10000 0 10000 Items[0]
        execute if data storage asset:sacred_treasure CopiedSlot run data modify storage asset:sacred_treasure TargetItems[-1].Slot set from storage asset:sacred_treasure CopiedSlot
        execute unless data storage asset:sacred_treasure CopiedSlot run data remove storage asset:sacred_treasure TargetItems[-1].Slot
# 新しい神器で上書きする
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage api: SelectedItemSlot set from storage asset:context SelectedItemSlot
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run function api:inventory/refer_selected_item_slot/replace_from_shulker_box
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run loot replace entity @s weapon.offhand 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run loot replace entity @s armor.feet 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run loot replace entity @s armor.legs 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run loot replace entity @s armor.chest 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run loot replace entity @s armor.head 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} store result storage api: SelectedItemSlot int 1 run data get storage asset:sacred_treasure TargetItems[-1].Slot
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function api:inventory/refer_selected_item_slot/replace_from_shulker_box
# current更新
    data modify storage asset:sacred_treasure ProcessedItem set from storage asset:sacred_treasure TargetItems[-1]
    function asset_manager:sacred_treasure/data/current/update/
# リセット
    data remove storage asset:sacred_treasure Name
    data remove storage asset:sacred_treasure CopiedSlot