#> asset_manager:sacred_treasure/triggers/equipments/mask_slot/masking_foreach
#
#
#
# @within function asset_manager:sacred_treasure/triggers/equipments/mask_slot/*

# 末尾要素に応じて追加するものを変える
    execute if data storage asset:sacred_treasure CopiedEquipChanges[-1]._{_: true} run data modify storage asset:sacred_treasure NewEquips append value -1
    execute if data storage asset:sacred_treasure CopiedEquipChanges[-1]._{_:false} run data modify storage asset:sacred_treasure NewEquips append from storage asset:sacred_treasure Equipments[-1]
# 末尾削除
    data remove storage asset:sacred_treasure CopiedEquipChanges[-1]
    data remove storage asset:sacred_treasure Equipments[-1]
# 要素がまだあるなら再帰
    execute if data storage asset:sacred_treasure CopiedEquipChanges[0] if data storage asset:sacred_treasure Equipments[0] run function asset_manager:sacred_treasure/triggers/equipments/mask_slot/masking_foreach