#> asset_manager:artifact/triggers/equipments/mask_slot/
#
#
#
# @within function asset_manager:artifact/triggers/*equip/

# 元配列
    function asset_manager:artifact/data/current/equips/init
    data modify storage asset:artifact CopiedEquipChanges set from storage asset:artifact EquipmentChanges
    data modify storage asset:artifact CopiedItems set value []
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.mainhand
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.offhand
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.feet
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.legs
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.chest
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.head
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[0]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[1]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[2]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[3]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[4]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[5]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[6]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[7]
    data modify storage asset:artifact CopiedItems append from storage asset:context Items.hotbar[8]

# マスク処理
    function asset_manager:artifact/triggers/equipments/mask_slot/masking_foreach
# 適用する(結果が反転しているので注意)
    function asset_manager:artifact/data/current/equips/replace
# リセット
    data remove storage asset:artifact CopiedEquipChanges
    data remove storage asset:artifact CopiedItems
    data remove storage asset:artifact Equipments
