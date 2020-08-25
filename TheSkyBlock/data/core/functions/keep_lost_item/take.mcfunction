#> core:keep_lost_item/take
#
# プレイヤーのアイテムを保管するよ
#
# @within core:handler/death

#> Temp
# @private
    #declare storage core:keep_lost_item/take

# InventoryをTempに移してSlotを削除し、固有storageに追加
    data modify storage core:keep_lost_item/take Temp set from entity @s Inventory
    data remove storage core:keep_lost_item/take Temp[].Slot
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Items append from storage core:keep_lost_item/take Temp[]
    data remove storage core:keep_lost_item/take Temp
#名前の取得
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run loot replace block 10000 0 10000 container.0 loot lib:get_name
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run data modify storage lib: String set from block 10000 0 10000 Items[0].tag.SkullOwner.Name
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run loot replace block 10000 0 10000 container.0 loot lib:string_quated
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name set from block 10000 0 10000 Items[0].tag.display.Name
# インベントリclear
    clear @s