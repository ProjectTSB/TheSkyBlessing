#> asset_manager:artifact/triggers/equipments/update_effect/
#
# 装備時効果を更新する
#
# @within function asset_manager:artifact/triggers/

# ユーザーストレージ呼び出し
    function oh_my_dat:please

# データの初期化
    data modify storage asset:artifact Old.Modifiers set value []
    data modify storage asset:artifact EquipIDList set value []
    data modify storage asset:artifact New.Modifiers set value []
    data modify storage asset:artifact New.EquipIDList set value []
# 前データを回収
    data modify storage asset:artifact Old.Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments.Modifiers
    data modify storage asset:artifact EquipIDList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments.IDList
# Modifierを一旦削除
    execute if data storage asset:artifact Old.Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/

# データを取得
    data modify storage asset:artifact CopiedItemData set from storage asset:artifact ItemData
# 装備条件のチェック
    scoreboard players set $SlotIndex Temporary 15
    function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

# データを処理する
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/
    execute if data storage asset:artifact EquipIDList[0] run function asset_manager:artifact/triggers/equipments/update_effect/equip_set
# 抽出したデータを戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments.Modifiers set from storage asset:artifact New.Modifiers
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments.IDList set from storage asset:artifact New.EquipIDList

# リセット
    data remove storage asset:artifact CopeidItemData
    data remove storage asset:artifact EquipList
    data remove storage asset:artifact Old.Modifiers
    data remove storage asset:artifact Modifiers
    data remove storage asset:artifact EquipIDList
    data remove storage asset:artifact New.Modifiers
    data remove storage asset:artifact New.EquipIDList
