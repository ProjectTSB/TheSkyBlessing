#> api:modifier/attack/physical/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Physical : double
# @api

execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/attack/*/get が非プレイヤーに対して使用されています","color":"white"}]

function oh_my_dat:please
data remove storage api: Return.Attack.Physical
data modify storage api: Return.Attack.Physical set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Attack.Physical
