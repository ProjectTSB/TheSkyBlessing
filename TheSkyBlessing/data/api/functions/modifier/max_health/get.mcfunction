#> api:modifier/max_health/get
#
#
#
# @input as player
# @output storage api:
#   Return.MaxHealth : double
# @api

function oh_my_dat:please
data remove storage api: Return.MaxHealth
data modify storage api: Return.MaxHealth set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MaxHealth
