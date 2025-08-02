#> api:entity/mob/effect/core/get/from_level/filter/good_or_bad.m
# @input args IsBadEffect : bool
# @within function api:entity/mob/effect/core/get/from_level/

$data modify storage api: Temp.FilteredEffects append from storage api: Temp.Effects[{IsBadEffect:$(IsBadEffect)}]
