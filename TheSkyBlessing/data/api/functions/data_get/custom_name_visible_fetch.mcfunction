#> api:data_get/custom_name_visible_fetch
#
#
#
# @within function api:data_get/custom_name_visible

data modify storage api: Temp set from entity @s CustomNameVisible
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.CustomNameVisible.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.CustomNameVisible.Data

data remove storage api: Temp
data remove storage api: CustomNameVisible
