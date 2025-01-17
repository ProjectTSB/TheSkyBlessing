#> api:modifier/mp_regen/get
#
#
#
# @input as player
# @output storage api:
#   Return.MPRegen : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.MPRegen
data modify storage api: Return.MPRegen set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MPRegen
