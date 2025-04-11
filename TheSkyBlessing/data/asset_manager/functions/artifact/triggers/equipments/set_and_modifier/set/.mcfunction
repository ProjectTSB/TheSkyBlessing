#> asset_manager:artifact/triggers/equipments/set_and_modifier/set/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/

# 2つの配列を重複を起こさないように結合する
# asset:artifact Temp.PreviousDifferentEquipments[].Equipment.SetEffectID -> asset:artifact Temp.List[]._
    data modify storage asset:artifact Temp.List set value []
    data modify storage asset:artifact Temp.Target append from storage asset:artifact Temp.PreviousDifferentEquipments[].Equipment.SetEffectID
    data modify storage asset:artifact Temp.Target append from storage asset:artifact Temp.CurrentDifferentEquipments[].Equipment.SetEffectID
    execute if data storage asset:artifact Temp.Target[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/set/unique
# 各要素ごとに当てはまる部位数を確認して反映する
    execute if data storage asset:artifact Temp.List[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/set/foreach
# リセット
    data remove storage asset:artifact Temp.List
    data remove storage asset:artifact Temp.Target
