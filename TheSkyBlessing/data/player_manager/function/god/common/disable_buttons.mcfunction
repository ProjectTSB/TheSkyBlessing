#> player_manager:god/common/disable_buttons
# @within function world_manager:area/01.god_boundaries/leave_temple

data modify storage api: Argument.Key set value "check_offering"
function api:button/disable

data modify storage api: Argument.Key set value "mercy"
function api:button/disable

function player_manager:god/common/disable_another_believer_in_temple_buttons
function player_manager:god/change_believe/disable_change_believe_confirm_buttons
