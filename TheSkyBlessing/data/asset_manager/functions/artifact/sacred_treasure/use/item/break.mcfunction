#> asset_manager:sacred_treasure/use/item/break
#
# アイテムを破壊します
#
# @within function asset_manager:sacred_treasure/use/item/has_remain

# 音
    playsound entity.item.break player @a
# そのスロットを消し飛ばす
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run data modify storage api: SelectedItemSlot set from storage asset:context SelectedItemSlot
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"mainhand"} run function api:inventory/refer_selected_item_slot/replace_air
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"offhand"} run item replace entity @s weapon.offhand with air
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"feet"} run item replace entity @s armor.feet with air
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"legs"} run item replace entity @s armor.legs with air
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"chest"} run item replace entity @s armor.chest with air
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"head"} run item replace entity @s armor.head with air
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} store result storage api: SelectedItemSlot int 1 run data get storage asset:sacred_treasure TargetItems[-1].Slot
    execute if data storage asset:sacred_treasure {TargetDefaultSlot:"hotbar"} run function api:inventory/refer_selected_item_slot/replace_air
# current更新
    function asset_manager:sacred_treasure/data/current/update/