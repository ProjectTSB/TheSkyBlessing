#> player_manager:god/change_believe/disable_change_believe_confirm_buttons
#
#
#
# @within function
#   player_manager:god/change_believe/**
#   player_manager:god/common/disable_buttons

data modify storage api: Argument.Key set value "change_believe_confirm"
function api:button/disable

data modify storage api: Argument.Key set value "change_believe_cancel"
function api:button/disable
