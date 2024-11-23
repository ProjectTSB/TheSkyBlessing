#> asset_manager:artifact/triggers/equipments/update_attribute/equip_trigger
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/*

# セッションを開ける
    function lib:array/session/open

# dis_equip
    data modify storage lib: Array set from storage asset:artifact Old.CopiedItemData[-1].SubTriggers
    data modify storage lib: CompareTarget set value "equip"
    function lib:array/compare_single
    execute if data storage lib: CompareResult[{_:{_:true}}] run function asset_manager:artifact/triggers/dis_equip/

# リセット
    data modify storage lib: Array set value []

# equip
    data modify storage lib: Array set from storage asset:artifact New.CopiedItemData[-1].SubTriggers
    data modify storage lib: CompareTarget set value "equip"
    function lib:array/compare_single
    execute if data storage lib: CompareResult[{_:{_:true}}] run function asset_manager:artifact/triggers/equip/

# リセット
    function lib:array/session/close
    data remove storage asset:artifact Old.CopiedItemData[-1]
    data remove storage asset:artifact New.CopiedItemData[-1]

# 要素が残っていれば再帰
    execute if data storage asset:artifact New.CopiedItemData[0] run function asset_manager:artifact/triggers/equipments/update_attribute/equip_trigger
