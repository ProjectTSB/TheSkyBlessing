#> asset_manager:island/dispel/register_tp
#
#
#
# @within function asset_manager:island/dispel/successful

summon marker ~ ~ ~ {Tags:["Teleporter","Object","Uninterferable"]}
execute as @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] run function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID set value 0
data modify storage api: Argument.GroupID set value 0
data modify storage api: Argument.Color set value "White"
function asset_manager:teleporter/dynamic_register/