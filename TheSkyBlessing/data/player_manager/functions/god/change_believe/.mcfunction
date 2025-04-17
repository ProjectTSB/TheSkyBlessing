#> player_manager:god/change_believe/
#
#
#
# @within function
#   player_manager:god/*/in_temple
#   player_manager:god/change_believe/on_check_blessing

data modify storage api: Argument.Label set value "この神を信仰する"
data modify storage api: Argument.Listener set value "player_manager:god/change_believe/on_change_believe_request"
function api:button/send

data modify storage api: Argument.Label set value "この神の恩恵を見る"
data modify storage api: Argument.Listener set value "player_manager:god/change_believe/on_check_blessing"
function api:button/send

data modify storage api: Argument.Label set value "難易度を変える"
data modify storage api: Argument.Listener set value "player_manager:god/change_difficulty/request/"
function api:button/send
