#> api:data_get/id_fetch
#
#
#
# @within function api:data_get/id

data modify storage api: Temp set from entity @s id
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.id.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.id.Data

data remove storage api: Temp
data remove storage api: id
