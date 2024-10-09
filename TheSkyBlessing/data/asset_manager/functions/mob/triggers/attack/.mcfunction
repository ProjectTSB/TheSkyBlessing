#> asset_manager:mob/triggers/attack/
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/attack/call_super_methods/foreach

function asset_manager:mob/triggers/attack/attack.m with storage asset:context

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/attack/call_super_methods/

data remove storage asset:mob Implement
