#> asset_manager:artifact/triggers/dis_equip/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/equip_trigger

# idを取り出す
    data modify storage asset:context id set from storage asset:artifact Old.CopiedItemData[-1].ID
# 処理を呼び出す
    function asset_manager:artifact/triggers/dis_equip/dis_equip.m with storage asset:context
