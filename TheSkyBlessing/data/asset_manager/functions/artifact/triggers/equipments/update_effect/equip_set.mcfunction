#> asset
#> asset_manager:artifact/triggers/equipments/update_effect/equip_set
# @within function
#   asset_manager:artifact/triggers/equipments/update_effect/
#   asset_manager:artifact/triggers/equipments/update_effect/equip_set

# データ回収
    data modify storage asset:artifact SetID set from storage asset:artifact EquipIDList[-1]

# セット効果を更新
    data modify storage api: Argument.ID set from storage asset:artifact SetID
    function asset_manager:artifact/triggers/equipments/update_effect/parts_count.m with storage asset:artifact
    execute if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id
    execute unless data storage api: Argument{Stack:0} run data modify storage asset:artifact New.EquipIDList append from storage asset:artifact SetID
    execute unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give

# リセット&ループ
    data remove storage api: Argument.Stack
    data remove storage asset:artifact SetID
    data remove storage asset:artifact EquipIDList[-1]
    execute if data storage asset:artifact EquipIDList[0] run function asset_manager:artifact/triggers/equipments/update_effect/equip_set
