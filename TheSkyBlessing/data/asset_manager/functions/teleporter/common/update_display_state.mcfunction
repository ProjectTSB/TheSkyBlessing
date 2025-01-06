#> asset_manager:teleporter/common/update_display_state
#
#
#
# @within function
#   asset_manager:teleporter/register/construct/at_pos
#   asset_manager:teleporter/tick/global

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationState:"Activate"} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{AngelProtection:    true} run data modify entity @s item set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16711680},CustomModelData:20329}}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationState:"Activate"} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{AngelProtection:true} run data modify entity @s item set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:53706},CustomModelData:20329}}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationState:"VisibleDeactivate"} run data modify entity @s item set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:3092271},CustomModelData:20329}}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationState:"InvisibleDeactivate"} run data modify entity @s item set value {}
