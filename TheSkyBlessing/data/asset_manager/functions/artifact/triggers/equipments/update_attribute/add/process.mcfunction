#> asset_manager:artifact/triggers/equipments/update_attribute/add/process
# @within function asset_manager:artifact/triggers/equipments/update_attribute/add/*

# データを取得
    data modify storage asset:artifact Temp.Modifier set from storage asset:artifact Temp.Modifiers[-1]

# データを整える
    execute if data storage asset:artifact Temp.Modifier.MaxStack run function asset_manager:artifact/triggers/equipments/update_attribute/add/calc_amount
    data modify storage asset:artifact Temp.Modifier.UUID set value [I;1,1,-1,-1]
    data modify storage asset:artifact Temp.Modifier.UUID[2] set from storage asset:artifact Temp.Modifier.ID
    data modify storage asset:artifact Enum.Slot set from storage asset:artifact Temp.Modifier.Slot
    execute store result storage asset:artifact Temp.Modifier.UUID[3] int 1 run function asset_manager:artifact/triggers/equipments/enum/slot/.m with storage asset:artifact Enum

# apiに移す
    data modify storage api: Argument.UUID set from storage asset:artifact Temp.Modifier.UUID
    data modify storage api: Argument.Amount set from storage asset:artifact Temp.Modifier.Amount
    data modify storage api: Argument.Operation set from storage asset:artifact Temp.Modifier.Operation
# カスタムModifierで処理
    scoreboard players set $CustomModifier Temporary 0
    function asset_manager:artifact/triggers/equipments/update_attribute/add/custom.m with storage asset:artifact Temp.Modifier
# バニラModifierで処理
    execute unless score $CustomModifier Temporary matches 1 run data modify storage asset:artifact Temp.Modifier.SlotID set from storage asset:artifact Temp.Modifier.UUID[3]
    execute unless score $CustomModifier Temporary matches 1 run function asset_manager:artifact/triggers/equipments/update_attribute/decimal_to_hexadecimal/
    execute unless score $CustomModifier Temporary matches 1 run function asset_manager:artifact/triggers/equipments/update_attribute/add/generic.m with storage asset:artifact Temp.Modifier

# リセット&ループ
    scoreboard players reset $CustomModifier Temporary
    data remove storage asset:artifact Temp.Modifier
    data remove storage asset:artifact Temp.Modifiers[-1]
    execute if data storage asset:artifact Temp.Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/process
