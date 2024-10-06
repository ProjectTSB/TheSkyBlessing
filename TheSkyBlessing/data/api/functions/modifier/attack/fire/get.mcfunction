#> api:modifier/attack/fire/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Fire : double
# @api

function oh_my_dat:please
data remove storage api: Return.Attack.Fire
data modify storage api: Return.Attack.Fire set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Attack.Fire
