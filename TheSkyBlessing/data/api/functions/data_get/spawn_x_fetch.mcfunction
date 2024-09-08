#> api:data_get/spawn_x_fetch
#
#
#
# @within function api:data_get/spawn_x

data modify storage api: Temp set from entity @s SpawnX
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SpawnX.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SpawnX.Data

data remove storage api: Temp
data remove storage api: SpawnX
