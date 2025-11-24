#> settings:change_difficulty/send_request_dismiss_button
#
#
#
# @within function settings:change_difficulty/on_change_difficulty.m

data modify storage api: Argument.Label set value "却下する"
data modify storage api: Argument.Key set value "change_difficulty_request_dismiss"
data modify storage api: Argument.Listener set value "settings:change_difficulty/on_dismiss_request"
function api:button/send
