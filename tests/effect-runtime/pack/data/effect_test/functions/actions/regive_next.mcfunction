#> effect_test:actions/regive_next
# @private


data modify storage asset:context this.Value set value 42
data modify storage api: Argument.ID set value 64992
data modify storage api: Argument.Duration set value 200
data modify storage api: Argument.Stack set value 3
data modify storage api: Argument.DurationOperation set value "forceReplace"
data modify storage api: Argument.StackOperation set value "forceReplace"
data modify storage api: Argument.FieldOverride set value {Value:9}
function api:entity/mob/effect/give
function api:entity/mob/effect/reset
data modify storage effect_test: AfterGive set from storage asset:context this
