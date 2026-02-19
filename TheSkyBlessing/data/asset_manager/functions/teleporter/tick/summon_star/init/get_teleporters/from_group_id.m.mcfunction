#> asset_manager:teleporter/tick/summon_star/init/get_teleporters/from_group_id.m
#
#
#
# @input args TargetGroupID
# @output storage asset:teleporter FilteredTeleporters
#
# @within function asset_manager:teleporter/tick/summon_star/init/get_teleporters/

$data modify storage asset:teleporter FilteredTeleporters append from storage asset:teleporter Teleporters[{Data:{GroupIDs:[$(TargetGroupID)]}}]
