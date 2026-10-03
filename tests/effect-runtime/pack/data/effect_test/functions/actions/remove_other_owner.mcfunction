#> effect_test:actions/remove_other_owner
# @private


data modify storage api: Argument.ID set value 64991
execute as @e[tag=EffectTest.Other,limit=1] at @s run function api:entity/mob/effect/remove/from_id
function api:entity/mob/effect/reset
