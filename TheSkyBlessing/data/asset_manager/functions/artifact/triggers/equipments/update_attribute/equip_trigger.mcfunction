#> asset_manager:artifact/triggers/equipments/update_attribute/equip_trigger
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/*

# dis_equip
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact Old.CopiedItemData[-1].SubTriggers
    data modify storage lib: CompareTarget set value "equip"
    function lib:array/compare_single
    data modify storage asset:artifact IsEquipTrigger set from storage lib: CompareResult
    function lib:array/session/close
    execute if data storage asset:artifact IsEquipTrigger[{_:{_:true}}] run function asset_manager:artifact/triggers/dis_equip/

# equip
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:artifact New.CopiedItemData[-1].SubTriggers
    data modify storage lib: CompareTarget set value "equip"
    function lib:array/compare_single
    data modify storage asset:artifact IsEquipTrigger set from storage lib: CompareResult
    function lib:array/session/close
    execute if data storage asset:artifact IsEquipTrigger[{_:{_:true}}] run function asset_manager:artifact/triggers/equip/

# リセット
    data remove storage asset:artifact IsEquipTrigger
    data remove storage asset:artifact Old.CopiedItemData[-1]
    data remove storage asset:artifact New.CopiedItemData[-1]

# 要素が残っていれば再帰
    execute if data storage asset:artifact New.CopiedItemData[0] run function asset_manager:artifact/triggers/equipments/update_attribute/equip_trigger
