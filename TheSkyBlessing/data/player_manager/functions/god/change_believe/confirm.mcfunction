#> player_manager:god/change_believe/confirm
#
#
#
# @within function player_manager:god/change_believe/on_change_believe_request

tellraw @s [{"text":"今までに失ったアイテムが消滅しますが、本当に改宗しますか？\n"}]

data modify storage api: Argument.Label set value "改宗する"
data modify storage api: Argument.Listener set value "player_manager:god/change_believe/on_change"
function api:button/send
