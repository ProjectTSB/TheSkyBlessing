#> api:heal/core/reset
#
#
#
# @within function api:heal/reset

data remove storage api: Argument.Heal
data remove storage api: Argument.FixedHeal
data remove storage api: Argument.DisableLog
data remove storage api: Argument.ApplyTrigger
data remove storage api: Argument.Metadata

scoreboard players reset $LatestModifiedUser UserID
