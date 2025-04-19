#> asset_manager:teleporter/common/append_or_reorder_teleporters.m
#
#
# @input args
#   ID: int
# @within function
#   api:teleporter/unsafe/**
#   asset_manager:teleporter/register/construct/

$execute if data storage asset:teleporter Teleporters[{ID:$(ID)}] run data modify storage asset:teleporter Temp set from storage asset:teleporter Teleporters[{ID:$(ID)}]
$execute if data storage asset:teleporter Teleporters[{ID:$(ID)}] run data remove storage asset:teleporter Teleporters[{ID:$(ID)}]
$execute if data storage asset:teleporter Teleporters[{ID:$(ID)}] run data modify storage asset:teleporter Teleporters append from storage asset:teleporter Temp
$execute if data storage asset:teleporter Teleporters[{ID:$(ID)}] run data remove storage asset:teleporter Temp
$execute unless data storage asset:teleporter Teleporters[{ID:$(ID)}] run data modify storage asset:teleporter Teleporters append value {}
