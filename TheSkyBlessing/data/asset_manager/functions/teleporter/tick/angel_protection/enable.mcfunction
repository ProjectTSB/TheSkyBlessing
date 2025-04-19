#> asset_manager:teleporter/tick/angel_protection/enable
#
#
#
# @within function asset_manager:teleporter/tick/global

data modify storage asset:teleporter Teleporters[-1].Data.AngelProtection set value true
function asset_manager:teleporter/common/increment_activation_state_version
