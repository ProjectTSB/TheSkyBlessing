#> asset_manager:artifact/triggers/equipments/update_attribute/extract_changes
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/*

# 配列をマスクする
    # EquipIDは必要なのでlib:array/maskは使わない
    # 改宗時は問答無用で通すようにする
        data modify storage asset:artifact Mask set from storage asset:artifact CopiedChanges[-1]._._
        execute if entity @s[tag=Believe.Changed] run data modify storage asset:artifact Mask set value false
        data modify storage asset:artifact Old.MaskedItemData append from storage asset:artifact Old.CopiedItemData[-1]
        execute unless data storage asset:artifact Old.MaskedItemData[-1].EquipID run data modify storage asset:artifact Old.MaskedItemData[-1].EquipID set value -2
        execute if data storage asset:artifact Old.MaskedItemData[-1].Modifiers[0] run data modify storage asset:artifact Old.MaskedItemData[-1].Modifiers[].ID set from storage asset:artifact Old.CopiedItemData[-1].ID
        execute if data storage asset:artifact Old.MaskedItemData[-1].Modifiers[0] run data modify storage asset:artifact Old.MaskedItemData[-1].Modifiers[].Slot set from storage asset:artifact Old.CopiedItemData[-1].TargetSlot
        execute if data storage asset:artifact Old.MaskedItemData[-1].Modifiers[0] run data modify storage asset:artifact Old.MaskedItemData[-1].Modifiers[].Max set from storage asset:artifact Old.CopiedItemData[-1].PartsMax
        data modify storage asset:artifact New.MaskedItemData append from storage asset:artifact New.CopiedItemData[-1]
        execute unless data storage asset:artifact New.MaskedItemData[-1].EquipID run data modify storage asset:artifact New.MaskedItemData[-1].EquipID set value -2
        execute if data storage asset:artifact New.MaskedItemData[-1].Modifiers[0] run data modify storage asset:artifact New.MaskedItemData[-1].Modifiers[].ID set from storage asset:artifact New.CopiedItemData[-1].ID
        execute if data storage asset:artifact New.MaskedItemData[-1].Modifiers[0] run data modify storage asset:artifact New.MaskedItemData[-1].Modifiers[].Slot set from storage asset:artifact New.CopiedItemData[-1].TargetSlot
        execute if data storage asset:artifact New.MaskedItemData[-1].Modifiers[0] run data modify storage asset:artifact New.MaskedItemData[-1].Modifiers[].Max set from storage asset:artifact New.CopiedItemData[-1].PartsMax
    # 古い方のデータ
        data modify storage asset:artifact TargetID set from storage asset:artifact Old.CopiedItemData[-1].ID
        execute if data storage asset:artifact {Mask:true} unless data storage asset:artifact {TargetID:-2} run data modify storage asset:artifact Old.MaskedItemData[-1] merge value {ID:-1,UUID:-1}
    # 新しい方のデータ
    # こっちは信仰が正しくなければ弾く
        data modify storage asset:artifact TargetID set from storage asset:artifact New.CopiedItemData[-1].ID
        execute if data storage asset:artifact {Mask:true} unless data storage asset:artifact {TargetID:-2} run data modify storage asset:artifact New.MaskedItemData[-1] merge value {ID:-1,UUID:-1}
        execute unless data storage asset:artifact {Mask:true} run data modify storage asset:artifact CanUsedGod set from storage asset:artifact New.MaskedItemData[-1].CanUsedGod
        execute unless data storage asset:artifact {Mask:true} run function asset_manager:artifact/triggers/equipments/update_attribute/check_religion
        execute unless data storage asset:artifact {Mask:true} unless score $CheckBelieve Temporary matches 1 unless data storage asset:artifact {TargetID:-2} run data modify storage asset:artifact New.MaskedItemData[-1] merge value {ID:-1,UUID:-1,EquipID:-1,Modifiers:[]}

# 要素を削除して、残っているならば再帰
    scoreboard players reset $CheckBelieve Temporary
    data remove storage asset:artifact Mask
    data remove storage asset:artifact TargetID
    data remove storage asset:artifact CanUsedGod
    data remove storage asset:artifact CopiedChanges[-1]
    data remove storage asset:artifact Old.CopiedItemData[-1]
    data remove storage asset:artifact New.CopiedItemData[-1]
    execute if data storage asset:artifact CopiedChanges[0] run function asset_manager:artifact/triggers/equipments/update_attribute/extract_changes
