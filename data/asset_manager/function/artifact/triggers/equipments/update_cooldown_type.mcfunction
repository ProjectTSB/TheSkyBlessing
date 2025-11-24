#> asset_manager:artifact/triggers/equipments/update_cooldown_type
#
#
#
# @within function asset_manager:artifact/triggers/

# UserStorage取得
    function oh_my_dat:please
# 配列に設定する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes set value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.offhand.components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.offhand.components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.feet.components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.feet.components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.legs.components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.legs.components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.chest.components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.chest.components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.head.components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.head.components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[0].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[0].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[1].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[1].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[2].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[2].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[3].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[3].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[4].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[4].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[5].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[5].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[6].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[6].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[7].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[7].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes append value []
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[8].components."minecraft:custom_data".TSB.TypeCooldown.Type
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[-1] append from storage asset:context New.Items.hotbar[8].components."minecraft:custom_data".TSB.SecondaryTypeCooldown.Type
