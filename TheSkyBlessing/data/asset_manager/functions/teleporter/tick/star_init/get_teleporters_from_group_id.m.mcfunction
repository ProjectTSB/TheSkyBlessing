#> asset_manager:teleporter/tick/star_init/get_teleporters_from_group_id.m
#
#
#
# @input args TargetGroupID
# @output storage asset:teleporter FilteredTeleporters
#
# @within function asset_manager:teleporter/tick/star_init/

$data modify storage asset:teleporter FilteredTeleporters append from storage asset:teleporter Teleporters[{GroupID:$(TargetGroupID)}]
