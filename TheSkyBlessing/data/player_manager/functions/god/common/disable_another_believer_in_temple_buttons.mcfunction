#> player_manager:god/common/disable_another_believer_in_temple_buttons
#
#
#
# @within function player_manager:god/**

data modify storage api: Argument.Key set value "change_believe_request"
function api:button/disable

data modify storage api: Argument.Key set value "check_blessing"
function api:button/disable
