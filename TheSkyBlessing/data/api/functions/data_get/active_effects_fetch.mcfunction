#> api:data_get/active_effects_fetch
#
#
#
# @within function api:data_get/active_effects

data modify storage api: Temp set from entity @s ActiveEffects
execute if data storage api: Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ActiveEffects.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ActiveEffects.Data

data remove storage api: Temp
data remove storage api: ActiveEffects