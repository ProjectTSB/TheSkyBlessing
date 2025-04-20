#> player_manager:god/common/disable_buttons
# @within function world_manager:area/01.god_boundaries/leave_temple

data modify storage api: Argument.Key set value "change_believe_request"
function api:button/disable

data modify storage api: Argument.Key set value "check_blessing"
function api:button/disable

data modify storage api: Argument.Key set value "check_offering"
function api:button/disable

data modify storage api: Argument.Key set value "mercy"
function api:button/disable

data modify storage api: Argument.Key set value "change_believe_confirm"
function api:button/disable
