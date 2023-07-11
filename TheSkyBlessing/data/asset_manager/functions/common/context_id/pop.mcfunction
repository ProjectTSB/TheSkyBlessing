#> asset_manager:common/context_id/pop
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
#   asset_manager:mob/triggers/death/manual
#   asset_manager:mob/triggers/*/call_super_method
#   asset_manager:artifact/give
#   api:spawner/subtract_hp

# idを掃除
    data remove storage asset:context id
# idを戻す
    data modify storage asset:context id set from storage asset:context IDStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context IDStashStack[-1]