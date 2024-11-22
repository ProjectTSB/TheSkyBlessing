#> asset_manager:teleporter/update_activation_state/try_get_storage_id_from_teleporter
#
# IDの一致するテレポーターのOhMyDatIDを検索し、存在するかと、存在する場合はそのIDを返す
#
# @input storage api: Argument.ID : int
# @output score
#   $ OhMyDatID
#   $TeleporterExists Temporary : int @ 0..1
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
    execute store success score $TeleporterExists Temporary if data storage lib: Array[0]
# リセット
    function lib:array/session/close
