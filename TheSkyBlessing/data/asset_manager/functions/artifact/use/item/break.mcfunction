#> asset_manager:artifact/use/item/break
#
# アイテムを破壊します
#
# @within function asset_manager:artifact/use/item/has_remain

# 音
    execute unless data storage asset:artifact TargetItem{DisableBreakSound:true} run playsound entity.item.break player @a
# そのスロットを消し飛ばす
    execute if data storage asset:artifact TargetItem{TargetSlot:"mainhand"} store result storage api: SelectedItemSlot int 1 run data get storage asset:artifact TargetItem.InvSlot
    execute if data storage asset:artifact TargetItem{TargetSlot:"mainhand"} run function api:inventory/refer_selected_item_slot/replace_air
    execute if data storage asset:artifact TargetItem{TargetSlot:"offhand"} run item replace entity @s weapon.offhand with air
    execute if data storage asset:artifact TargetItem{TargetSlot:"feet"} run item replace entity @s armor.feet with air
    execute if data storage asset:artifact TargetItem{TargetSlot:"legs"} run item replace entity @s armor.legs with air
    execute if data storage asset:artifact TargetItem{TargetSlot:"chest"} run item replace entity @s armor.chest with air
    execute if data storage asset:artifact TargetItem{TargetSlot:"head"} run item replace entity @s armor.head with air
    execute if data storage asset:artifact TargetItem{TargetSlot:"hotbar"} store result storage api: SelectedItemSlot int 1 run data get storage asset:artifact TargetItem.InvSlot
    execute if data storage asset:artifact TargetItem{TargetSlot:"hotbar"} run function api:inventory/refer_selected_item_slot/replace_air
# 破壊フラグを付与
    data modify storage asset:artifact TargetItem.Broken set value true
