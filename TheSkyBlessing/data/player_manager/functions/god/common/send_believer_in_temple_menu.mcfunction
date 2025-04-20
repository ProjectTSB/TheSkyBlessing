#> player_manager:god/common/send_believer_in_temple_menu
#
#
#
# @within function
#   player_manager:god/*/in_temple
#   player_manager:god/mercy/on_check_offering

data modify storage api: Argument.Label set value '"供物を調べる"'
data modify storage api: Argument.Key set value "check_offering"
data modify storage api: Argument.Listener set value "player_manager:god/mercy/on_check_offering"
function api:button/send

data modify storage api: Argument.Label set value '"慈悲を乞う"'
data modify storage api: Argument.Key set value "mercy"
data modify storage api: Argument.Listener set value "player_manager:god/mercy/on_mercy"
function api:button/send
