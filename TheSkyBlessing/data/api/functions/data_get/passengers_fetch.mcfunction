#> api:data_get/passengers_fetch
#
#
#
# @within function api:data_get/passengers

data modify storage api: Temp set from entity @s Passengers
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Passengers.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Passengers.Data

data remove storage api: Temp
data remove storage api: Passengers
