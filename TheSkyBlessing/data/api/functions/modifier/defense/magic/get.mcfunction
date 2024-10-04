#> api:modifier/defense/magic/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Magic : double
# @api

function oh_my_dat:please
data remove storage api: Return.Defense.Magic
data modify storage api: Return.Defense.Magic set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Defense.Magic
