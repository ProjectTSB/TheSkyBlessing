#> asset_manager:mob/triggers/attack/attempt_call
#
#
#
# @within function
#   asset_manager:mob/triggers/attack/foreach
#   asset_manager:mob/triggers/attack/call_super_methods/foreach

function asset_manager:mob/triggers/attack/attack.m with storage asset:context

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/attack/call_super_methods/
