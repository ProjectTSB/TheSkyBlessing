#> api:teleporter/set_activation_state/from_nearest
#
#
#
# @within function api:teleporter/set_activation_state/

execute as @e[type=marker,tag=Teleporter,distance=..5] run function oh_my_dat:please
data modify storage api: Argument.ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ID
function api:teleporter/set_activation_state/from_id