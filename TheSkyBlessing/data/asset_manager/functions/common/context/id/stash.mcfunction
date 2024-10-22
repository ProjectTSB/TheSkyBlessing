#> asset_manager:common/context/id/stash
#
#
#
# @within function
#   api:mob/summon
#   api:mob/core/summon
#   asset:*/extends
#   asset:*/super.*
#   api:artifact/*/from_id
#   api:entity/mob/effect/core/give
#   asset_manager:mob/triggers/death/manual
#   asset_manager:effect/events/*/call_super_method
#   asset_manager:artifact/give/candidates
#   api:spawner/subtract_hp
#   asset_manager:object/summon/
#   api:object/core/summon
#   asset_manager:object/*/call_super_methods/
#   asset:object/call.m
#   asset_manager:mob/triggers/*/call_super_methods/
#   asset_manager:mob/*/call_super_methods/
#   asset:mob/call.m

# スタックに新しい空間を追加する
    data modify storage asset:context IDStashStack append value {}
# idを退避(Valueに突っ込んでいるのは、idのデータ型が一意に定まらず特定の型のリストとして持てないため)
    data modify storage asset:context IDStashStack[-1].Value set from storage asset:context id
# idを掃除
    data remove storage asset:context id
