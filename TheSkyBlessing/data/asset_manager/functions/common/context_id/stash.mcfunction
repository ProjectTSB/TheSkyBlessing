#> asset_manager:common/context_id/stash
#
#
#
# @within function
#   api:mob/core/summon
#   asset:*/extends
#   asset:*/super.*
#   api:artifact/*/from_id
#   api:mob/core/summon
#   asset:mob/extends
#   asset:mob/super.*
#   asset_manager:mob/triggers/*/call_super_method
#   asset_manager:artifact/give
#   api:spawner/subtract_hp

# スタックに新しい空間を追加する
    data modify storage asset:context IDStashStack append value {}
# idを退避(Valueに突っ込んでいるのは、idのデータ型が一意に定まらず特定の型のリストとして持てないため)
    data modify storage asset:context IDStashStack[-1].Value set from storage asset:context id
# idを掃除
    data remove storage asset:context id