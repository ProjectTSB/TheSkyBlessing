#> asset_manager:artifact/triggers/equipments/update_attribute/attire/foreach
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/attire/*

# エフェクトを付与する / 削除する
    data modify storage api: Argument.ID set from storage asset:artifact Temp.List[-1]._
    function asset_manager:artifact/triggers/equipments/update_attribute/attire/parts_count.m with storage api: Argument
    execute if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id
    execute unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Temp.List[-1]
    execute if data storage asset:artifact Temp.List[0] run function asset_manager:artifact/triggers/equipments/update_attribute/attire/foreach
