#> asset_manager:mob/triggers/death/call
#
#
#
# @within function
#   asset_manager:mob/triggers/death/
#   asset_manager:mob/triggers/death/call_super_method

function #asset:mob/death

execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/death/call_super_method

data remove storage asset:mob Implement