#> asset_manager:artifact/triggers/equipments/set_and_modifier/attire/foreach
#
#
#
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/*

# エフェクトを付与する / 削除する
    data modify storage api: Argument.ID set from storage asset:artifact Temp.List[-1]._
    execute store result storage api: Argument.Stack int 1 run function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/parts_count.m with storage api: Argument
    execute if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id
    execute unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Temp.List[-1]
    execute if data storage asset:artifact Temp.List[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/foreach
