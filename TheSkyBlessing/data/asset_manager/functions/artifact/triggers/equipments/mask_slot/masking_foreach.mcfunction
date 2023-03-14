#> asset_manager:artifact/triggers/equipments/mask_slot/masking_foreach
#
#
#
# @within function asset_manager:artifact/triggers/equipments/mask_slot/*

# 末尾要素に応じて追加するものを変える
    execute if data storage asset:artifact CopiedEquipChanges[-1]._{_: true} run data modify storage asset:artifact NewEquips append value -1
    execute if data storage asset:artifact CopiedEquipChanges[-1]._{_:false} run data modify storage asset:artifact NewEquips append from storage asset:artifact Equipments[-1]
# 末尾削除
    data remove storage asset:artifact CopiedEquipChanges[-1]
    data remove storage asset:artifact Equipments[-1]
# 要素がまだあるなら再帰
    execute if data storage asset:artifact CopiedEquipChanges[0] if data storage asset:artifact Equipments[0] run function asset_manager:artifact/triggers/equipments/mask_slot/masking_foreach