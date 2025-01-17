#> api:modifier/receive_heal/get
#
#
#
# @input as player
# @output storage api:
#   Return.ReceiveHeal : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.ReceiveHeal
data modify storage api: Return.ReceiveHeal set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.ReceiveHeal
