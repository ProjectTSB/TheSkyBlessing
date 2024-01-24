#> asset_manager:effect/events/tick/
#
#
#
# @within function
#   asset_manager:effect/foreach
#   asset_manager:effect/events/tick/call_super_method

function #asset:effect/tick

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/tick/call_super_method

data remove storage asset:effect Implement