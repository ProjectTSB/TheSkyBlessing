#> player_manager:trigger/register/enable.m
# @input args
#   ID: int
# @within function player_manager:trigger/register/m

function oh_my_dat:please
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Trigger.$(ID) set value true
