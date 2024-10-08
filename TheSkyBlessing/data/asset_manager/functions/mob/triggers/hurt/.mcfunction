#> asset_manager:mob/triggers/hurt/
#
#
#
# @within function
#   asset_manager:mob/triggers/
#   asset_manager:mob/triggers/hurt/call_super_method

function asset_manager:mob/triggers/hurt/hurt.m with storage asset:context

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/hurt/call_super_method

data remove storage asset:mob Implement
