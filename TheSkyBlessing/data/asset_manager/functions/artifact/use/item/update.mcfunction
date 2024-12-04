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
    data modify storage asset:artifact Name set from storage asset:artifact TargetItem.rawName
    # 残り回数が存在する場合
        execute if data storage asset:artifact TargetItem.RemainingCount run data modify storage asset:artifact Item.tag.TSB set from storage asset:artifact TargetItem
        execute if data storage asset:artifact TargetItem.RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/get_name/has_remain
        execute if data storage asset:artifact TargetItem.RemainingCount run data remove storage asset:artifact Item
    # 残り回数が存在しない場合
        execute unless data storage asset:artifact TargetItem.RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/get_name/
    # 名前をコピーしておく
        data modify storage asset:artifact CopiedName set from block 10000 0 10000 Items[0].tag.display.Name
    # Inventoryからshulker boxにコピペする
        function asset_manager:artifact/use/item/fetch_inventory.m with storage asset:artifact TargetItem
    # 不要なデータを削除する
        data modify storage asset:artifact TargetSlot set from storage asset:artifact TargetItem.TargetSlot
        data remove storage asset:artifact TargetItem.TargetSlot
        data modify storage asset:artifact InvSlot set from storage asset:artifact TargetItem.InvSlot
        data remove storage asset:artifact TargetItem.InvSlot
    # shulker boxでデータを完成させる
        data modify block 10000 0 10000 Items[0].tag.display.Name set from storage asset:artifact CopiedName
        data modify block 10000 0 10000 Items[0].tag.TSB merge from storage asset:artifact TargetItem
# 新しい神器で上書きする
    execute if data storage asset:artifact {TargetSlot:"mainhand"} store result storage api: SelectedItemSlot int 1 run data get storage asset:artifact InvSlot
    execute if data storage asset:artifact {TargetSlot:"mainhand"} run function api:inventory/refer_selected_item_slot/replace_from_shulker_box
    execute if data storage asset:artifact {TargetSlot:"offhand"} run loot replace entity @s weapon.offhand 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetSlot:"feet"} run loot replace entity @s armor.feet 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetSlot:"legs"} run loot replace entity @s armor.legs 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetSlot:"chest"} run loot replace entity @s armor.chest 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetSlot:"head"} run loot replace entity @s armor.head 1 mine 10000 0 10000 debug_stick
    execute if data storage asset:artifact {TargetSlot:"hotbar"} store result storage api: SelectedItemSlot int 1 run data get storage asset:artifact InvSlot
    execute if data storage asset:artifact {TargetSlot:"hotbar"} run function api:inventory/refer_selected_item_slot/replace_from_shulker_box
# リセット
    data remove storage asset:artifact Name
    data remove storage asset:artifact CopiedName
    data remove storage asset:artifact TargetSlot
    data remove storage asset:artifact InvSlot
