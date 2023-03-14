#> asset_manager:common/context_id/stash
#
#
#
# @within function
#   api:mob/summon
#   api:artifact/*/from_id
#   asset_manager:mob/triggers/death/manual
#   asset_manager:artifact/give
#   api:spawner/subtract_hp

# スタックに新しい空間を追加する
    data modify storage asset:context IDStashStack append value {}
# idを退避(Valueに突っ込んでいるのは、idのデータ型が一意に定まらず特定の型のリストとして持てないため)
    data modify storage asset:context IDStashStack[-1].Value set from storage asset:context id
# idを掃除
    data remove storage asset:context id