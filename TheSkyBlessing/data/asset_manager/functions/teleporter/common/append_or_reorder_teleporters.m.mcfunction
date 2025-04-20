#> asset_manager:teleporter/common/append_or_reorder_teleporters.m
#
#
# @input args ID: int
# @within function asset_manager:teleporter/**

$execute unless data storage asset:teleporter Teleporters[{ID:$(ID)}] run return run data modify storage asset:teleporter Teleporters append value {}
$data modify storage asset:teleporter Temp set from storage asset:teleporter Teleporters[{ID:$(ID)}]
$data remove storage asset:teleporter Teleporters[{ID:$(ID)}]
data modify storage asset:teleporter Teleporters append from storage asset:teleporter Temp
data remove storage asset:teleporter Temp
