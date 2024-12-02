#> asset_manager:common/context/id/stash
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

# スタックに新しい空間を追加する
    data modify storage asset:context IDStashStack append value {}
# idを退避(Valueに突っ込んでいるのは、idのデータ型が一意に定まらず特定の型のリストとして持てないため)
    data modify storage asset:context IDStashStack[-1].Value set from storage asset:context id
# idを掃除
    data remove storage asset:context id
