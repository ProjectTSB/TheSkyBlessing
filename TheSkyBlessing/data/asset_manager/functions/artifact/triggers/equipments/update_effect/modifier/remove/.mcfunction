#> asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/
#   asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/

# データを取得
    data modify storage asset:artifact Modifier set from storage asset:artifact Old.Modifiers[-1]

# データを整える
    data modify storage asset:artifact Modifier.UUID set value [I;1,1,-1,-1]
    data modify storage asset:artifact Modifier.UUID[2] set from storage asset:artifact Modifier.ID
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/get_slot_id

# apiに移す
    data modify storage api: Argument.UUID set from storage asset:artifact Modifier.UUID
# カスタムModifierで処理
    scoreboard players set $CustomModifier Temporary 0
    function asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/custom
# バニラでModifierで処理
    execute unless score $CustomModifier Temporary matches 1 run function asset_manager:artifact/triggers/equipments/update_effect/modifier/third_id/
    execute unless score $CustomModifier Temporary matches 1 run function asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/generic.m with storage asset:artifact Modifier

# リセット&ループ
    scoreboard players reset $CustomModifier Temporary
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact Old.Modifiers[-1]
    execute if data storage asset:artifact Old.Modifiers[0] run function asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/
