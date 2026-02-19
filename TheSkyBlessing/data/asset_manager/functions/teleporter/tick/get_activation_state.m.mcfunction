#> asset_manager:teleporter/tick/get_activation_state.m
#
#
#
# @input args ID: int
# @within function
#   asset_manager:teleporter/tick/player
#   asset_manager:teleporter/tick/global

$data modify storage asset:teleporter ActivationState set from storage asset:teleporter Teleporters[{ID:$(ID)}].Data.ActivationState
