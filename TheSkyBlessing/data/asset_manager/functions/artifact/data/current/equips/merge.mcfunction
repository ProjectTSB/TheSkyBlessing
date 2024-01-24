#> asset_manager:artifact/data/current/equips/merge
#
# Equipments <- MaskEquips
#
# @within function
#   asset_manager:artifact/data/*/revert_from_current
#   asset_manager:artifact/data/current/equips/merge

# そのまま扱えないので取得
    execute store result storage asset:artifact LatestMaskEquipID int 1 run data get storage asset:artifact MaskEquips[-1]
# 末尾要素に応じて追加するものを変える
    execute if data storage asset:artifact {LatestMaskEquipID:-1} run data modify storage asset:artifact NewEquips append from storage asset:artifact Equipments[-1]
    execute unless data storage asset:artifact {LatestMaskEquipID:-1} run data modify storage asset:artifact NewEquips append from storage asset:artifact MaskEquips[-1]
# 末尾削除
    data remove storage asset:artifact MaskEquips[-1]
    data remove storage asset:artifact Equipments[-1]
# 要素がまだあるなら再帰
    execute if data storage asset:artifact MaskEquips[0] if data storage asset:artifact Equipments[0] run function asset_manager:artifact/data/current/equips/merge