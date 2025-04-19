#> asset_manager:teleporter/tick/angel_protection/disable
#
#
#
# @within function asset_manager:teleporter/tick/global

data modify storage asset:teleporter Teleporters[-1].Data.AngelProtection set value false
function asset_manager:teleporter/common/increment_activation_state_version
