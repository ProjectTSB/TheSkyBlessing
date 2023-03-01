#> asset_manager:common/context_id/pop
#
#
#
# @within function
#   api:mob/core/summon
#   asset:mob/extends
#   asset:mob/super.*
#   api:sacred_treasure/*/from_id
#   asset_manager:mob/triggers/death/manual
#   asset_manager:mob/triggers/*/call_super_method
#   asset_manager:sacred_treasure/give
#   api:spawner/subtract_hp

# idを掃除
    data remove storage asset:context id
# idを戻す
    data modify storage asset:context id set from storage asset:context IDStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context IDStashStack[-1]