#> debug:modify_health/add.m
# @input args
#   Amount: float
# @private
# @user

function debug:modify_health/remove

$attribute @s generic.max_health modifier add ffffffff-0000-0000-0000-000000000000 "DebugModifyHealth" $(Amount) add
