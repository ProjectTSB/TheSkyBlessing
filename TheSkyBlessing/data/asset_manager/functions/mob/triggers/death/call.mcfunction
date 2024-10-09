#> asset_manager:mob/triggers/death/call
#
#
#
# @within function
#   asset_manager:mob/triggers/death/
#   asset_manager:mob/triggers/death/call_super_method

function asset_manager:mob/triggers/death/death.m with storage asset:context

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/death/call_super_methods/

data remove storage asset:mob Implement
