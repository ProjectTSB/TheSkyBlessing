#> api:modifier/defense/magic/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Magic : double
# @api

execute if entity @s[tag=!ExtendedCollision] run function oh_my_dat:please
execute if entity @s[tag= ExtendedCollision] run function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
data remove storage api: Return.Defense.Magic
data modify storage api: Return.Defense.Magic set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Defense.Magic
