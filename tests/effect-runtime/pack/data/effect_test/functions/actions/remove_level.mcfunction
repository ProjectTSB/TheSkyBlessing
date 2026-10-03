#> effect_test:actions/remove_level
# @private


data modify storage api: Argument.ClearLv set value 2
data modify storage api: Argument.ClearType set value "bad"
data modify storage api: Argument.ClearCount set value 1
function api:entity/mob/effect/remove/from_level
function api:entity/mob/effect/reset
