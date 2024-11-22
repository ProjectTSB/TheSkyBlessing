#> api:teleporter/set_activation_state/from_nearest
#
#
#
# @input storage api: Argument.ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
# @api

execute if entity @e[type=item_display,tag=Teleporter,distance=..5,limit=1] as @e[type=item_display,tag=Teleporter,distance=..5] run function oh_my_dat:please
execute if entity @e[type=item_display,tag=Teleporter,distance=..5,limit=1] run data modify storage api: Argument.ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ID
execute if entity @e[type=item_display,tag=Teleporter,distance=..5,limit=1] if data storage api: Argument.ID run function api:teleporter/set_activation_state/from_id
