#> effect_test:actions/zero_count
# @private


data modify storage api: Argument.ClearLv set value 3
data modify storage api: Argument.ClearCount set value 0
function api:entity/mob/effect/remove/from_level
function api:entity/mob/effect/reset
