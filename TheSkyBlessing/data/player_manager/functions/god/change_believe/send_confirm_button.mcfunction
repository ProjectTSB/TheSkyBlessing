#> player_manager:god/change_believe/send_confirm_button
#
#
#
# @within function player_manager:god/change_believe/on_change_believe_request

function player_manager:god/common/disable_another_believer_in_temple_buttons

tellraw @s [{"text":"今までに失ったアイテムが消滅しますが、本当に改宗しますか？\n"}]

data modify storage api: Argument.Label set value '"改宗する"'
data modify storage api: Argument.Key set value "change_believe_confirm"
data modify storage api: Argument.Listener set value "player_manager:god/change_believe/on_change_believe_confirm"
function api:button/send

data modify storage api: Argument.Label set value '"キャンセル"'
data modify storage api: Argument.Key set value "change_believe_cancel"
data modify storage api: Argument.Listener set value "player_manager:god/change_believe/on_change_believe_cancel"
function api:button/send
