#> debug:modify_health/add.m
# @input args
#   Amount: int
# @private
# @user

function debug:modify_health/remove

data modify storage api: Argument.UUID set value [I; -1,0,0,0]
$data modify storage api: Argument.Amount set value $(Amount)
data modify storage api: Argument.Operation set value "add"

function api:modifier/max_health/add
