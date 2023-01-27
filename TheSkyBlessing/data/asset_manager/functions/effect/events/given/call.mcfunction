#> asset_manager:effect/events/given/call
#
#
#
# @within function
#   asset_manager:effect/events/given/
#   asset_manager:effect/events/given/call_super_method

function #asset:effect/given

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/given/call_super_method

data remove storage asset:effect Implement