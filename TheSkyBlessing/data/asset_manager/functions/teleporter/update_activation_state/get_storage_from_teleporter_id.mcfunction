#> asset_manager:teleporter/update_activation_state/get_storage_from_teleporter_id
#
#
#
# @within function asset_manager:teleporter/update_activation_state/

# セッション開く
    function lib:array/session/open
# CompareResult = TeleporterOMDMap.map(v => v.TeleporterID == Argument.ID)
    data modify storage lib: Array append from storage asset:teleporter TeleporterOMDMap[].TeleporterID
    data modify storage lib: CompareTarget set from storage api: Argument.ID
    function lib:array/compare_single
# CompareResultを元に同一のIDの要素を取り出す
# OyMyDatID = TeleporterOMDMap.map(v => v.OyMyDatID).filter((v, i) => CompareResult[i]).head
    data modify storage lib: Array append from storage asset:teleporter TeleporterOMDMap[].OhMyDatID
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    execute store result score $ OhMyDatID run data get storage lib: Array[0]
# EntityStorage取得
    function oh_its_dat:please
# リセット
    function lib:array/session/close