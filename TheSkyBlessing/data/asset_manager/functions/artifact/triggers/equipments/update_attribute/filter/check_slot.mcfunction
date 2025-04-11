#> asset_manager:artifact/triggers/equipments/update_attribute/filter/check_slot
#
#
#
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/filter/
#   asset_manager:artifact/triggers/equipments/update_attribute/filter/check_slot

#> private
# @private
    #declare score_holder $InvalidSlot

# スロットチェック
    # チェックしているslotを取得する
        execute store result storage asset:artifact Enum.Index int 1 run scoreboard players add $SlotIndex Temporary 1
        function asset_manager:artifact/triggers/equipments/enum/index/.m with storage asset:artifact Enum
    # Slotが一致しているか確認する
        execute store success score $InvalidSlot Temporary run data modify storage asset:artifact Temp.3[-1].Equipment.Slot set from storage asset:artifact Enum.Slot
# データが正しそうなら引っ張り出す
    data modify storage lib: Array append value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless score $InvalidSlot Temporary matches 1.. run data modify storage lib: Array[-1] set from storage asset:artifact Temp.3[-1]
# 要素を削除し、残っていたら再帰する
    scoreboard players reset $InvalidSlot Temporary
    data remove storage asset:artifact Temp.3[-1]
    execute if data storage asset:artifact Temp.3[0] run function asset_manager:artifact/triggers/equipments/update_attribute/filter/check_slot
