#> asset_manager:artifact/triggers/equipments/mask_slot/
#
#
#
# @within function asset_manager:artifact/triggers/*equip

# 元配列
    function asset_manager:artifact/data/current/equips/init
    data modify storage asset:artifact CopiedEquipChanges set from storage asset:artifact EquipmentChanges
# マスク処理
    function asset_manager:artifact/triggers/equipments/mask_slot/masking_foreach
# 適用する(結果が反転しているので注意)
    function asset_manager:artifact/data/current/equips/replace
# リセット
    data remove storage asset:artifact CopiedEquipChanges
    data remove storage asset:artifact Equipments