#> asset_manager:common/context_id/pop
#
#
#
# @within function
#   api:mob/summon
#   api:artifact/*/from_id
#   asset_manager:mob/triggers/death/manual
#   asset_manager:artifact/give
#   api:spawner/subtract_hp

# idを掃除
    data remove storage asset:context id
# idを戻す
    data modify storage asset:context id set from storage asset:context IDStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context IDStashStack[-1]