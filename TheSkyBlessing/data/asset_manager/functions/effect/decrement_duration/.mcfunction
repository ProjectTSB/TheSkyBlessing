#> asset_manager:effect/decrement_duration/
#
#
#
# @within function asset_manager:effect/tick


function asset_manager:effect/decrement_duration/foreach
data modify storage asset:effect Effects set from storage asset:effect DecrementedEffects
data remove storage asset:effect DecrementedEffects