#> api:entity/mob/effect/core/get/from_level/filter/level/foreach.m
# @input args
#   TargetLv : int
#   Operator : string
# @within function
#   api:entity/mob/effect/core/get/from_level/filter/level/
#   api:entity/mob/effect/core/get/from_level/filter/level/foreach.m
#

#> Temp
# @private
    #declare score_holder $EffectLevel

execute store result score $EffectLevel Temporary run data get storage api: Temp.Effects[-1].RequireClearLv
$execute if score $EffectLevel Temporary $(Operator) $$(TargetLv) Const run data modify storage api: Temp.FilteredEffects append from storage api: Temp.Effects[-1]
scoreboard players reset $EffectLevel Temporary
data remove storage api: Temp.Effects[-1]
execute if data storage api: Temp.Effects[0] run function api:entity/mob/effect/core/get/from_level/filter/level/foreach.m with storage api: Temp
