#> effect_test:actions/clear_one
# @private


data modify storage api: Argument.ClearLv set value 3
data modify storage api: Argument.ClearCount set value 1
function api:entity/mob/effect/remove/from_level
function api:entity/mob/effect/reset
