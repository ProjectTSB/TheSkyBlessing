#> asset_manager:teleporter/update_activation_state/try_get_storage_id_from_teleporter.m
#
# IDの一致するテレポーターのOhMyDatIDを検索し、存在するかと、存在する場合はそのIDを返す
#
# @input args
#   ID: int
# @output score $ OhMyDatID
# @within function asset_manager:teleporter/update_activation_state/

scoreboard players reset $ OhMyDatID
$execute store result score $ OhMyDatID run data get storage asset:teleporter TeleporterOMDMap[{TeleporterID:$(ID)}].OhMyDatID
