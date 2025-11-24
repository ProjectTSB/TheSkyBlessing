#> player_manager:trigger/disable/m
# @input args
#   Key: string
# @within function api:button/disable

$execute store result storage player_manager:trigger Args.ID int 1 run function player_manager:trigger/common/find_already_registered_listener.m {Key:"$(Key)"}
function player_manager:trigger/disable/remove.m with storage player_manager:trigger Args
data remove storage player_manager:trigger Args
