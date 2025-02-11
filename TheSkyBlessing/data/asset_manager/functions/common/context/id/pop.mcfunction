#> asset_manager:common/context/id/pop
#
#
#
# @within function
#   asset:*/extends
#   asset:*/super.*
#   api:artifact/*/from_id
#   asset_manager:artifact/create/equipment/
#   api:entity/mob/effect/core/give
#   asset_manager:effect/events/*/call_super_method
#   api:mob/core/summon
#   asset:mob/call.m
#   asset_manager:mob/triggers/*/call_super_methods/
#   api:object/core/summon
#   asset:object/call.m
#   asset_manager:object/*/call_super_methods/
#   api:spawner/subtract_hp

# idを掃除
    data remove storage asset:context id
# idを戻す
    data modify storage asset:context id set from storage asset:context IDStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context IDStashStack[-1]
