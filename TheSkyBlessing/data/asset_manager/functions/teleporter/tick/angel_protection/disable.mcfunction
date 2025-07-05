#> asset_manager:teleporter/tick/angel_protection/disable
#
#
#
# @within function asset_manager:teleporter/tick/global

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.Data.AngelProtection set value false
function asset_manager:teleporter/common/append_or_reorder_teleporters.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData
function asset_manager:teleporter/common/increment_activation_state_version
