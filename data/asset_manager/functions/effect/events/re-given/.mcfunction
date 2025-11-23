#> asset_manager:effect/events/re-given/
#
#
#
# @within function
#   asset_manager:effect/foreach
#   asset_manager:effect/events/re-given/call_super_method

function #asset:effect/re-given

execute unless data storage asset:effect {Implement:true} run function asset_manager:effect/events/re-given/call_super_method

data remove storage asset:effect Implement