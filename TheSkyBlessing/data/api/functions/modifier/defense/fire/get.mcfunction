#> api:modifier/defense/fire/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Fire : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.Defense.Fire
data modify storage api: Return.Defense.Fire set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Defense.Fire
