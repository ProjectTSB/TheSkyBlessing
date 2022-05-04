#> asset_manager:sacred_treasure/triggers/equipments/mask_slot/
#
#
#
# @within function asset_manager:sacred_treasure/triggers/*equip

# 元配列
    function asset_manager:sacred_treasure/data/current/equips/init
    data modify storage asset:sacred_treasure CopiedEquipChanges set from storage asset:sacred_treasure EquipmentChanges
# マスク処理
    function asset_manager:sacred_treasure/triggers/equipments/mask_slot/masking_foreach
# 適用する(結果が反転しているので注意)
    function asset_manager:sacred_treasure/data/current/equips/replace
# リセット
    data remove storage asset:sacred_treasure CopiedEquipChanges
    data remove storage asset:sacred_treasure Equipments