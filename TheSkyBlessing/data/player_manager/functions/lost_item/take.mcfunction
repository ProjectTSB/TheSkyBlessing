#> player_manager:lost_item/take
#
# プレイヤーのアイテムを保管するよ
#
# @within core:handler/death

# Inventory -> Temp
    data modify storage player_manager:lost_item Temp set from storage api: Inventory
# Slotを削除
    data remove storage player_manager:lost_item Temp[].Slot
# 消滅の呪い付きアイテムを削除
    data remove storage player_manager:lost_item Temp[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
    data remove storage player_manager:lost_item Temp[{tag:{TSB:{SoulBound:true}}}]
# UserStorage呼び出し
    function oh_my_dat:please
# IDをIDSetに追加
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[-1] run data modify storage oh_my_dat: IDSet append value -2147483648
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[-1] store result storage oh_my_dat: IDSet[-1] int 1 run scoreboard players get @s OhMyDatID
# Temp -> UserStorage
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems append from storage player_manager:lost_item Temp[]
    data remove storage player_manager:lost_item Temp
#名前の取得
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run function lib:get_name/
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Name set from storage lib: Return.Name
# インベントリclear
    clear @s

# SoulBound のアイテムをインベントリに戻す
    execute if data storage api: Inventory[{tag:{TSB:{SoulBound:true}}}] run function player_manager:lost_item/regive_soulbound
