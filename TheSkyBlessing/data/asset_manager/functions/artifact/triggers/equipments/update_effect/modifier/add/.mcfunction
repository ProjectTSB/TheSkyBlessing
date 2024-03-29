#> asset_manager:artifact/triggers/equipments/update_effect/modifier/add
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/
#   asset_manager:artifact/triggers/equipments/update_effect/modifier/add

# データを取得
    data modify storage asset:artifact New.Modifiers append from storage asset:artifact Modifiers[-1]
    data modify storage asset:artifact Modifier set from storage asset:artifact Modifiers[-1]

# データを整える
    data modify storage asset:artifact Modifier.UUID set value [I;1,1,0,0]
    data modify storage asset:artifact Modifier.UUID[2] set from storage asset:artifact Modifier.ID
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/fourth_id

# apiに移す
    data modify storage api: Argument.UUID set from storage asset:artifact Modifier.UUID
    data modify storage api: Argument.Amount set from storage asset:artifact Modifier.Amount
    data modify storage api: Argument.Operation set from storage asset:artifact Modifier.Operation
# カスタムModifierで処理
    scoreboard players set $CustomModifier Temporary 0
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/custom
# バニラでModifierで処理
    execute unless score $CustomModifier Temporary matches 1 run function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/generic.m with storage asset:artifact Modifier

# リセット&ループ
    scoreboard players reset $CustomModifier Temporary
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact Modifiers[-1]
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/
