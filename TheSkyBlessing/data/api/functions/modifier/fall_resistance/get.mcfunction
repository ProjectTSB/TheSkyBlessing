#> api:modifier/fall_resistance/get
#
#
#
# @input as player
# @output storage api:
#   Return.FallResistance : double
# @api

execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/fall_resistance/get が非プレイヤーに対して使用されています","color":"white"}]

function oh_my_dat:please
data remove storage api: Return.FallResistance
data modify storage api: Return.FallResistance set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.FallResistance
