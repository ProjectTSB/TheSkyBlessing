#> api:modifier/attack/thunder/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Thunder : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.Attack.Thunder
data modify storage api: Return.Attack.Thunder set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Attack.Thunder
