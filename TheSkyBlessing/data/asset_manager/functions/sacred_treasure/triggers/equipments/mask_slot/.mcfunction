#> asset_manager:sacred_treasure/triggers/equipments/mask_slot/
#
#
#
# @within function asset_manager:sacred_treasure/triggers/*equip

# 元配列
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.mainhand
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.offhand
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.feet
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.legs
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.chest
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.head
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.hotbar[]

    data modify storage asset:sacred_treasure CopiedEquipChanges set from storage asset:sacred_treasure EquipmentChanges
# マスク処理
    function asset_manager:sacred_treasure/triggers/equipments/mask_slot/masking_foreach
# 適用する(結果が反転しているので注意)
    data modify storage asset:context id.hotbar[8] set from storage asset:sacred_treasure MaskedEquips[0]
    data modify storage asset:context id.hotbar[7] set from storage asset:sacred_treasure MaskedEquips[1]
    data modify storage asset:context id.hotbar[6] set from storage asset:sacred_treasure MaskedEquips[2]
    data modify storage asset:context id.hotbar[5] set from storage asset:sacred_treasure MaskedEquips[3]
    data modify storage asset:context id.hotbar[4] set from storage asset:sacred_treasure MaskedEquips[4]
    data modify storage asset:context id.hotbar[3] set from storage asset:sacred_treasure MaskedEquips[5]
    data modify storage asset:context id.hotbar[2] set from storage asset:sacred_treasure MaskedEquips[6]
    data modify storage asset:context id.hotbar[1] set from storage asset:sacred_treasure MaskedEquips[7]
    data modify storage asset:context id.hotbar[0] set from storage asset:sacred_treasure MaskedEquips[8]
    data modify storage asset:context id.head set from storage asset:sacred_treasure MaskedEquips[9]
    data modify storage asset:context id.chest set from storage asset:sacred_treasure MaskedEquips[10]
    data modify storage asset:context id.legs set from storage asset:sacred_treasure MaskedEquips[11]
    data modify storage asset:context id.feet set from storage asset:sacred_treasure MaskedEquips[12]
    data modify storage asset:context id.offhand set from storage asset:sacred_treasure MaskedEquips[13]
    data modify storage asset:context id.mainhand set from storage asset:sacred_treasure MaskedEquips[14]
# リセット
    data remove storage asset:sacred_treasure CopiedEquipChanges
    data remove storage asset:sacred_treasure Equipments
    data remove storage asset:sacred_treasure MaskedEquips