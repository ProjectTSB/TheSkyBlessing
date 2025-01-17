#> api:modifier/attack/base/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Base : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.Attack.Base
data modify storage api: Return.Attack.Base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Attack.Base
