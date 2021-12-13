#> api:inventory/core/clear/test/
#
#
#
# @within function api:inventory/clear

scoreboard players set $Return.Amount Lib 0
data remove storage lib: Array[].Slot
function api:inventory/core/clear/test/foreach