#> effect_test:actions/get_through_proxy
# @private


data modify storage asset:context this.Value set value 42
execute as @e[tag=EffectTest.Other,limit=1] at @s run function api:entity/mob/effect/get/all
data modify storage effect_test: Observed set from storage api: Return.EffectList
