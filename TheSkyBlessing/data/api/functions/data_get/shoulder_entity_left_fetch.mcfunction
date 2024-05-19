#> api:data_get/shoulder_entity_left_fetch
#
#
#
# @within function api:data_get/shoulder_entity_left

data modify storage api: Temp set from entity @s ShoulderEntityLeft
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ShoulderEntityLeft.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ShoulderEntityLeft.Data

data remove storage api: Temp
data remove storage api: ShoulderEntityLeft
