#> asset_manager:mob/triggers/hurt/attempt_call
#
#
#
# @within function
#   asset_manager:mob/triggers/hurt/foreach
#   asset_manager:mob/triggers/hurt/call_super_methods/foreach

function asset_manager:mob/triggers/hurt/hurt.m with storage asset:context

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/hurt/call_super_methods/
