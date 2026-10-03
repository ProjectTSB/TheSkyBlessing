#> effect_test:actions/get_all
# @private


data modify storage asset:context this.Value set value 42
function api:entity/mob/effect/get/all
data modify storage effect_test: Observed set from storage api: Return.EffectList
function api:entity/mob/effect/get/size/all
data modify storage effect_test: ObservedCount set from storage api: Return.EffectSize.All
function api:entity/mob/effect/get/size/good
data modify storage effect_test: ObservedGood set from storage api: Return.EffectSize.Good
function api:entity/mob/effect/get/size/bad
data modify storage effect_test: ObservedBad set from storage api: Return.EffectSize.Bad
data modify storage api: Argument.ID set from storage asset:context originID
function api:entity/mob/effect/get/from_id
data modify storage effect_test: ObservedSelf set from storage api: Return.Effect
