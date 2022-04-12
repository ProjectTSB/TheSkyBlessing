#> api:data_get/selected_item_fetch
#
#
#
# @within function api:data_get/selected_item

data modify storage api: Temp set from entity @s SelectedItem
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.SelectedItem.Data

data remove storage api: Temp
data remove storage api: SelectedItem