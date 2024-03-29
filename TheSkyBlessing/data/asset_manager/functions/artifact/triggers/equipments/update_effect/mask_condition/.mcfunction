#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/
#   asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

#> Private
# @private
    #declare score_holder $CanUsed
    #declare score_holder $DifferentSlot

# データの初期化
    scoreboard players set $CanUsed Temporary 0

# データ取得
    function asset_manager:artifact/triggers/equipments/update_effect/get_index
    data modify storage asset:artifact Slot set from storage asset:artifact CopiedItemData[-1].Slot
    data modify storage asset:artifact SetID set from storage asset:artifact CopiedItemData[-1].EquipID
    data modify storage asset:artifact CopiedModifiers set from storage asset:artifact CopiedItemData[-1].Modifiers
    data modify storage asset:artifact CanUsedGod set from storage asset:artifact CopiedItemData[-1].CanUsedGod

# 使用可能なデータかチェック
    # Believe
        execute if data storage asset:artifact {CanUsedGod:["Flora"]} if predicate player_manager:is_believe/flora run scoreboard players set $CanUsed Temporary 1
        execute if data storage asset:artifact {CanUsedGod:["Nyaptov"]} if predicate player_manager:is_believe/nyaptov run scoreboard players set $CanUsed Temporary 1
        execute if data storage asset:artifact {CanUsedGod:["Rumor"]} if predicate player_manager:is_believe/rumor run scoreboard players set $CanUsed Temporary 1
        execute if data storage asset:artifact {CanUsedGod:["Urban"]} if predicate player_manager:is_believe/urban run scoreboard players set $CanUsed Temporary 1
        execute if data storage asset:artifact {CanUsedGod:["Wi-ki"]} if predicate player_manager:is_believe/wi-ki run scoreboard players set $CanUsed Temporary 1
    # Slot
        execute store success score $DifferentSlot Temporary run data modify storage asset:artifact Slot set from storage asset:artifact TargetSlot
        execute if score $DifferentSlot Temporary matches 1 run scoreboard players set $CanUsed Temporary 0

# 代入データの設定
    # 初期化
        execute if score $CanUsed Temporary matches 1 run data modify storage asset:artifact EquipList append value {}
    # SetID
        execute if score $CanUsed Temporary matches 1 if data storage asset:artifact SetID run function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/equip_set
    # Modifiers
        execute if score $CanUsed Temporary matches 1 if data storage asset:artifact CopiedModifiers[0] run function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/modifier.m with storage asset:artifact

# リセット&ループ
    scoreboard players remove $SlotIndex Temporary 1
    scoreboard players reset $CanUsed Temporary
    data remove storage asset:artifact TargetSlot
    data remove storage asset:artifact Slot
    data remove storage asset:artifact SetID
    data remove storage asset:artifact CopiedModifiers
    data remove storage asset:artifact CanUsedGod
    data remove storage asset:artifact CopiedItemData[-1]
    execute if data storage asset:artifact CopiedItemData[0] run function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/
