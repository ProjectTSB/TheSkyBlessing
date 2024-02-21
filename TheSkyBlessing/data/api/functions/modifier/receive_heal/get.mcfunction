#> api:modifier/receive_heal/get
#
#
#
# @input as player
# @output storage api:
#   Return.ReceiveHeal : double
# @api

function oh_my_dat:please
data remove storage api: Return.ReceiveHeal
data modify storage api: Return.ReceiveHeal set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.ReceiveHeal