#> asset_manager:artifact/triggers/equipments/update_attribute/attire/foreach
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/attire/*

#> private
# @private
    #declare score_holder $SetID

# idを取得する
    execute store result score $SetID Temporary run data get storage asset:artifact Attire.List[-1]._

# エフェクトを付与する / 削除する
    execute if score $SetID Temporary matches 1.. run data modify storage api: Argument.ID set from storage asset:artifact Attire.List[-1]._
    execute if score $SetID Temporary matches 1.. run function asset_manager:artifact/triggers/equipments/update_attribute/attire/parts_count.m with storage api: Argument
    execute if score $SetID Temporary matches 1.. unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give
    execute if score $SetID Temporary matches 1.. if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id

# 要素を削除して、残っているならば再帰
    scoreboard players reset $SetID Temporary
    data remove storage asset:artifact Attire.List[-1]
    execute if data storage asset:artifact Attire.List[0] run function asset_manager:artifact/triggers/equipments/update_attribute/attire/foreach
