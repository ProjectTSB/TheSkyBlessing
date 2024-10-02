#> asset_manager:mob/triggers/hurt/attempt_call
#
#
#
# @within function
#   asset_manager:mob/triggers/hurt/foreach
#   asset_manager:mob/triggers/hurt/call_super_method

function #asset:mob/hurt

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/hurt/call_super_method

data remove storage asset:mob Implement
