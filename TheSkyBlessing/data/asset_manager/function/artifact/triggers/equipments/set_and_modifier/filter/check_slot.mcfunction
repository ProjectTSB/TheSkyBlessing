#> asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_slot
#
#
#
# @within function
#   asset_manager:artifact/triggers/equipments/set_and_modifier/filter/
#   asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_slot

# Slotが一致しているか確認する
    execute store success storage asset:artifact Temp.IsDifferentSlot byte 1 run data modify storage asset:artifact Temp.BelieveFilteredItems[-1].Equipment.Slot set from storage asset:artifact Temp.Slot[-1]
# データが正しそうなら引っ張り出す
    data modify storage lib: Array append value {ID:-2}
    execute if data storage asset:artifact Temp{IsDifferentSlot:false} run data modify storage lib: Array[-1] set from storage asset:artifact Temp.BelieveFilteredItems[-1]
# 要素を削除し、残っていたら再帰する
    scoreboard players reset $InvalidSlot Temporary
    data remove storage asset:artifact Temp.BelieveFilteredItems[-1]
    data remove storage asset:artifact Temp.Slot[-1]
    execute if data storage asset:artifact Temp.BelieveFilteredItems[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_slot
