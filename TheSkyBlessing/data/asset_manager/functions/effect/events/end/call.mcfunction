#> asset_manager:effect/events/end/call
#
#
#
# @within function
#   asset_manager:effect/events/end/
#   asset_manager:effect/events/end/call_super_method

function #asset:effect/end

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/end/call_super_method

data remove storage asset:effect Implement