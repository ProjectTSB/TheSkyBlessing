#> asset_manager:teleporter/tick/get_activation_state_version.m
#
#
#
# @input args ID: int
# @within function asset_manager:teleporter/tick/global

$return run data get storage asset:teleporter Teleporters[{ID:$(ID)}].Data.ActivationStateVersion
