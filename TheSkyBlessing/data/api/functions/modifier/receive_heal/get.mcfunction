#> api:modifier/receive_heal/get
#
#
#
# @input as player
# @output storage api:
#   Return.ReceiveHeal : double
# @api

execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/receive_heal/get が非プレイヤーに対して使用されています","color":"white"}]

function oh_my_dat:please
data remove storage api: Return.ReceiveHeal
data modify storage api: Return.ReceiveHeal set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.ReceiveHeal
