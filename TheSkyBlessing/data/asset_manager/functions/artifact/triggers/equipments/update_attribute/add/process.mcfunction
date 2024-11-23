#> asset_manager:artifact/triggers/equipments/update_attribute/add/process
# @within function asset_manager:artifact/triggers/equipments/update_attribute/add/*

# データを取得
    data modify storage asset:artifact Modifier set from storage asset:artifact MaskedModifiers[-1]

# データを整える
    execute if data storage asset:artifact Modifier.MaxStack run function asset_manager:artifact/triggers/equipments/update_attribute/add/calc_effective
    data modify storage asset:artifact Modifier.UUID set value [I;1,1,-1,-1]
    data modify storage asset:artifact Modifier.UUID[2] set from storage asset:artifact Modifier.ID
    data modify storage asset:artifact Enum.Slot set from storage asset:artifact Modifier.Slot
    execute store result storage asset:artifact Modifier.UUID[3] int 1 run function asset:artifact/enum/slot/.m with storage asset:artifact Enum

# apiに移す
    data modify storage api: Argument.UUID set from storage asset:artifact Modifier.UUID
    data modify storage api: Argument.Amount set from storage asset:artifact Modifier.Amount
    data modify storage api: Argument.Operation set from storage asset:artifact Modifier.Operation
# カスタムModifierで処理
    scoreboard players set $CustomModifier Temporary 0
    function asset_manager:artifact/triggers/equipments/update_attribute/add/custom.m with storage asset:artifact Modifier
# バニラModifierで処理
    execute unless score $CustomModifier Temporary matches 1 run data modify storage asset:artifact Modifier.SlotID set from storage asset:artifact Modifier.UUID[3]
    execute unless score $CustomModifier Temporary matches 1 run function asset_manager:artifact/triggers/equipments/update_attribute/dec_to_hex/
    execute unless score $CustomModifier Temporary matches 1 run function asset_manager:artifact/triggers/equipments/update_attribute/add/generic.m with storage asset:artifact Modifier

# リセット&ループ
    scoreboard players reset $CustomModifier Temporary
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact MaskedModifiers[-1]
    execute if data storage asset:artifact MaskedModifiers[0] run function asset_manager:artifact/triggers/equipments/update_attribute/add/process
