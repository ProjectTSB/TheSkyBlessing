#> asset_manager:mob/triggers/attack/attempt_call
#
#
#
# @within function
#   asset_manager:mob/triggers/attack/foreach
#   asset_manager:mob/triggers/attack/call_super_method

function #asset:mob/attack

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/attack/call_super_method

data remove storage asset:mob Implement
