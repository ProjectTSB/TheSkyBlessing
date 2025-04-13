#> api:modifier/attack/water/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Water : double
# @api

execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/attack/*/get が非プレイヤーに対して使用されています","color":"white"}]

function oh_my_dat:please
data remove storage api: Return.Attack.Water
data modify storage api: Return.Attack.Water set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Attack.Water
