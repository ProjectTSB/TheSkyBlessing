#> api:modifier/defense/water/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Water : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.Defense.Water
data modify storage api: Return.Defense.Water set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Defense.Water
