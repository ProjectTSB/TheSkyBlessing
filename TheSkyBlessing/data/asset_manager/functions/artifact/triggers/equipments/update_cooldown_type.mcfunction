#> asset_manager:artifact/triggers/equipments/update_cooldown_type
#
#
#
# @within function asset_manager:artifact/triggers/

# UserStorage取得
    function oh_my_dat:please
# 配列に設定する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes set value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.offhand.tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.feet.tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.legs.tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.chest.tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.head.tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[0].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[1].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[2].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[3].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[4].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[5].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[6].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[7].tag.TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value "unknown"
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] set from storage asset:context New.Items.hotbar[8].tag.TSB.TypeCooldown.Type
