#> asset_manager:artifact/triggers/equip/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/equip_trigger

# idを取り出す
    data modify storage asset:context id set from storage asset:artifact New.CopiedItemData[-1].ID
# 処理を呼び出す
    function asset_manager:artifact/triggers/equip/equip.m with storage asset:context
