#> asset_manager:artifact/triggers/equipments/set_and_modifier/set/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/

# 2つの配列を重複を起こさないように結合する
# asset:artifact Temp.PreviousDifferentEquipments[].Equipment.Effects[].ID -> asset:artifact Temp.List[]._
    function lib:array/session/open
    data modify storage lib: Array append from storage asset:artifact Temp.PreviousDifferentEquipments[].Equipment.Effects[].ID
    data modify storage lib: Array append from storage asset:artifact Temp.CurrentDifferentEquipments[].Equipment.Effects[].ID
    function lib:array/distinct
    data modify storage asset:artifact Temp.List set from storage lib: Array
    function lib:array/session/close
# 各要素ごとに当てはまる部位数を確認して反映する
    execute if data storage asset:artifact Temp.List[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/set/foreach
# リセット
    data remove storage asset:artifact Temp.List
