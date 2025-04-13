#> api:modifier/mp_regen/get
#
#
#
# @input as player
# @output storage api:
#   Return.MPRegen : double
# @api

execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/mp_regen/get が非プレイヤーに対して使用されています","color":"white"}]

function oh_my_dat:please
data remove storage api: Return.MPRegen
data modify storage api: Return.MPRegen set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MPRegen
