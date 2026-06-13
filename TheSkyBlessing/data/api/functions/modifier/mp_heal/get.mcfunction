#> api:modifier/mp_heal/get
#
#
#
# @input as player
# @output storage api:
#   Return.MPHeal : double
# @api

execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/mp_heal/get が非プレイヤーに対して使用されています","color":"white"}]

function oh_my_dat:please
data remove storage api: Return.MPHeal
data modify storage api: Return.MPHeal set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MPHeal
