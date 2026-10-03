#> effect_test:actions/get_level
# @private


data modify storage api: Argument.ClearLv set value 2
data modify storage api: Argument.FilterMode set value "LessThanOrEqual"
function api:entity/mob/effect/get/from_level
data modify storage effect_test: Observed set from storage api: Return.EffectList
