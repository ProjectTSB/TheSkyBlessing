#> player_manager:god/common/send_another_believer_in_temple_buttons
#
#
#
# @within function player_manager:god/**

tellraw @s {"text":""}

data modify storage api: Argument.Label set value "この神を信仰する"
data modify storage api: Argument.Key set value "change_believe_request"
data modify storage api: Argument.Listener set value "player_manager:god/change_believe/on_change_believe_request"
function api:button/send

data modify storage api: Argument.Label set value "この神の恩恵を見る"
data modify storage api: Argument.Key set value "check_blessing"
data modify storage api: Argument.Listener set value "player_manager:god/change_believe/on_check_blessing"
function api:button/send
