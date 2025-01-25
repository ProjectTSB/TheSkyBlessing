#> api:modifier/attack/physical/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Physical : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.Attack.Physical
data modify storage api: Return.Attack.Physical set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Attack.Physical
