#> api:modifier/max_mp/get
#
#
#
# @input as player
# @output storage api:
#   Return.MaxMP : double
# @api

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.MaxMP
execute store result storage api: Return.MaxMP double 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MaxMP
