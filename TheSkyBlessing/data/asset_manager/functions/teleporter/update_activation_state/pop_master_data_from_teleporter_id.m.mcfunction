#> asset_manager:teleporter/update_activation_state/pop_master_data_from_teleporter_id.m
#
# IDの一致するテレポーターのデータをマスタより取り出す
#
# @input args
#   ID: int
# @output storage asset:teleporter
#   TargetTeleporterData : compound GroupData
#   Teleporters : Teleporters - Teleporters[id=Argument.ID]
# @within function asset_manager:teleporter/update_activation_state/

$data modify storage asset:teleporter TargetTeleporterData set from storage asset:teleporter Teleporters[{ID:$(ID)}]
$data remove storage asset:teleporter Teleporters[{ID:$(ID)}]
