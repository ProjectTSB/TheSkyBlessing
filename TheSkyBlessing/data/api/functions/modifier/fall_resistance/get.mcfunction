#> api:modifier/fall_resistance/get
#
#
#
# @input as player
# @output storage api:
#   Return.FallResistance : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.FallResistance
data modify storage api: Return.FallResistance set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.FallResistance
