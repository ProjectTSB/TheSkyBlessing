#> asset_manager:sacred_treasure/data/current/equips/merge
#
# Equipments <- MaskEquips
#
# @within function
#   asset_manager:sacred_treasure/data/*/revert_from_current
#   asset_manager:sacred_treasure/data/current/equips/merge

# そのまま扱えないので取得
    execute store result storage asset:sacred_treasure LatestMaskEquipID int 1 run data get storage asset:sacred_treasure MaskEquips[-1]
# 末尾要素に応じて追加するものを変える
    execute if data storage asset:sacred_treasure {LatestMaskEquipID:-1} run data modify storage asset:sacred_treasure NewEquips append from storage asset:sacred_treasure Equipments[-1]
    execute unless data storage asset:sacred_treasure {LatestMaskEquipID:-1} run data modify storage asset:sacred_treasure NewEquips append from storage asset:sacred_treasure MaskEquips[-1]
# 末尾削除
    data remove storage asset:sacred_treasure MaskEquips[-1]
    data remove storage asset:sacred_treasure Equipments[-1]
# 要素がまだあるなら再帰
    execute if data storage asset:sacred_treasure MaskEquips[0] if data storage asset:sacred_treasure Equipments[0] run function asset_manager:sacred_treasure/data/current/equips/merge