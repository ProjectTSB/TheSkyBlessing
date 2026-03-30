#> asset_manager:mob/triggers/kill/attempt_call
#
#
#
# @within function
#   asset_manager:mob/triggers/kill/foreach
#   asset_manager:mob/triggers/kill/call_super_methods/foreach

function asset_manager:mob/triggers/kill/kill.m with storage asset:context

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/kill/call_super_methods/
