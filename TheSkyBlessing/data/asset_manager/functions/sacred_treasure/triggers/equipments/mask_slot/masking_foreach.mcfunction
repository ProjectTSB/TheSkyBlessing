#> asset_manager:sacred_treasure/triggers/equipments/mask_slot/masking_foreach
#
#
#
# @within function asset_manager:sacred_treasure/triggers/equipments/mask_slot/*

# 末尾を移す(配列の特定の位置に対するチェックを直接できないので)
    data modify storage asset:sacred_treasure TailElem set from storage asset:sacred_treasure CopiedEquipChanges[-1]
# 末尾要素に応じて追加するものを変える
    execute if data storage asset:sacred_treasure {TailElem: true} run data modify storage asset:sacred_treasure MaskedEquips append value -1
    execute if data storage asset:sacred_treasure {TailElem:false} run data modify storage asset:sacred_treasure MaskedEquips append from storage asset:sacred_treasure Equipments[-1]
# 末尾削除
    data remove storage asset:sacred_treasure CopiedEquipChanges[-1]
    data remove storage asset:sacred_treasure Equipments[-1]
# 要素がまだあるなら再帰
    execute if data storage asset:sacred_treasure CopiedEquipChanges[0] if data storage asset:sacred_treasure Equipments[0] run function asset_manager:sacred_treasure/triggers/equipments/mask_slot/masking_foreach