#> asset_manager:artifact/use/item/break
#
# アイテムを破壊します
#
# @within function asset_manager:artifact/use/item/has_remain

# 音
    execute unless data storage asset:artifact TargetItems[-1].components."minecraft:custom_data".TSB.DisabledFlag.Use{BreakSound:true} run playsound entity.item.break player @a
# そのスロットを消し飛ばす
    execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run data modify storage api: SelectedItemSlot set from storage asset:context SelectedItemSlot
    execute if data storage asset:artifact {TargetDefaultSlot:"mainhand"} run function api:inventory/refer_selected_item_slot/replace_air
    execute if data storage asset:artifact {TargetDefaultSlot:"offhand"} run item replace entity @s weapon.offhand with air
    execute if data storage asset:artifact {TargetDefaultSlot:"feet"} run item replace entity @s armor.feet with air
    execute if data storage asset:artifact {TargetDefaultSlot:"legs"} run item replace entity @s armor.legs with air
    execute if data storage asset:artifact {TargetDefaultSlot:"chest"} run item replace entity @s armor.chest with air
    execute if data storage asset:artifact {TargetDefaultSlot:"head"} run item replace entity @s armor.head with air
    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} store result storage api: SelectedItemSlot int 1 run data get storage asset:artifact TargetItems[-1].Slot
    execute if data storage asset:artifact {TargetDefaultSlot:"hotbar"} run function api:inventory/refer_selected_item_slot/replace_air
# current更新
    function asset_manager:artifact/data/current/update/
