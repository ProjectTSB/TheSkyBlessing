#> api:damage/core/check_duplicate_and_attack/attempt_call.m
# @input args
#   ID: int
# @within function api:damage/core/check_duplicate_and_attack/

$execute unless data storage api: DamageApiDuplicateHitProtect.$(ID) run function api:damage/core/attack

$execute unless data storage api: DamageApiDuplicateHitProtect.$(ID) run data modify storage api: DamageApiDuplicateHitProtect.$(ID) set value true
