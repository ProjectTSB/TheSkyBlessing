#> api:data_get/sleeping_z_fetch
#
#
#
# @within function api:data_get/sleeping_z

data modify storage api: Temp set from entity @s SleepingZ
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SleepingZ.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SleepingZ.Data

data remove storage api: Temp
data remove storage api: SleepingZ
