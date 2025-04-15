#> api:modifier/max_mp/get
#
#
#
# @input as player
# @output storage api:
#   Return.MaxMP : double
# @api

execute if entity @s[type=!player] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:modifier/max_mp/get が非プレイヤーに対して使用されています","color":"white"}]

function oh_my_dat:please
data remove storage api: Return.MaxMP
execute store result storage api: Return.MaxMP double 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MaxMP
