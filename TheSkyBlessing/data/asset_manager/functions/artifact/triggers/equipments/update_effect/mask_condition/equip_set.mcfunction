#> asset_manager:artifact/triggers/equipments/update_effect/mask_condition/equip_set
# @within function asset_manager:artifact/triggers/equipments/update_effect/mask_condition/

#> private
# @private
    #declare score_holder $ArraySize
    #declare score_holder $SuccessCount

# データ取得
    data modify storage asset:artifact CopiedIDList set from storage asset:artifact EquipIDList

# 同一のものがなければ追加
    execute store result score $ArraySize Temporary if data storage asset:artifact CopiedIDList[]
    scoreboard players operation $SuccessCount Temporary > $0 Const
    execute unless score $ArraySize Temporary matches 0 store result score $SuccessCount Temporary run data modify storage asset:artifact CopiedIDList[] set from storage asset:artifact SetID
    execute if score $ArraySize Temporary = $SuccessCount Temporary run data modify storage asset:artifact EquipIDList append from storage asset:artifact SetID
    data modify storage asset:artifact EquipList[-1].EquipID set from storage asset:artifact SetID

# リセット
    scoreboard players reset $ArraySize Temporary
    scoreboard players reset $SuccessCount Temporary
    data remove storage asset:artifact CopiedIDList
