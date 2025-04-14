#> api:damage/core/check_duplicate_and_attack/
# @within function api:damage/

execute store result storage api: Args.ID int 1 run scoreboard players get @s ForwardTargetMobUUID

function api:damage/core/check_duplicate_and_attack/attempt_call.m with storage api: Args
data remove storage api: Args
