#> asset_manager:sacred_treasure/use/item/break
#
# アイテムを破壊します
#
# @within function asset_manager:sacred_treasure/use/item/has_remain

# クールダウン表示を消す
    scoreboard players set @s WeaponLogCD 0
    scoreboard players set @s WeaponLogCDMax 0
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
# データ削除
    data remove storage asset:sacred_treasure Item
# current更新
    function asset_manager:sacred_treasure/data/current/update/