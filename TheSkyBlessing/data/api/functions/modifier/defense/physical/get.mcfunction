#> api:modifier/defense/physical/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Physical : double
# @api

function oh_my_dat:please
data remove storage api: Return.Defense.Physical
data modify storage api: Return.Defense.Physical set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Defense.Physical
