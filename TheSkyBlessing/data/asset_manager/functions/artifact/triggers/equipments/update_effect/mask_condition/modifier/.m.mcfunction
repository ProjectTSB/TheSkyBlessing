#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier/.m
# @input args TargetSlot : string
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/mask_condition/
#   asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier/.m

# 一つ抽出
    data modify storage asset:artifact Modifier set from storage asset:artifact CopiedModifiers[-1]
    data modify storage asset:artifact Modifier.ID set from storage asset:artifact CopiedItemData[-1].ID
    data modify storage asset:artifact Modifier.Slot set from storage asset:artifact CopiedItemData[-1].Slot
# スロットが正しければチェック
    $execute if data storage asset:artifact Modifier{Slot:"$(TargetSlot)"} run function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier/check.m with storage asset:artifact Modifier
# リセット&ループ
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact CopiedModifiers[-1]
    execute if data storage asset:artifact CopiedModifiers[0] run function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier/.m with storage asset:artifact
