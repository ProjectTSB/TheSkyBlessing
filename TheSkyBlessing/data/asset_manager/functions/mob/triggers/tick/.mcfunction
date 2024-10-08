#> asset_manager:mob/triggers/tick/
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/tick/call_super_method

function asset_manager:mob/triggers/tick/tick.m with storage asset:context

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/tick/call_super_method

data remove storage asset:mob Implement
