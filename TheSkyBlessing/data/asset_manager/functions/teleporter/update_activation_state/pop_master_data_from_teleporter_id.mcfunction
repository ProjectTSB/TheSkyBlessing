#> asset_manager:teleporter/update_activation_state/pop_master_data_from_teleporter_id
#
#
#
# @output storage asset:teleporter
#   TargetTeleporterData
#   FilteredTeleporters
# @within function asset_manager:teleporter/update_activation_state/

# セッション開く
    function lib:array/session/open
# 対象テレポーターのGrpupIDと、同一のIDを持つ配列の要素のIndex のみがtrueになる配列(CompareResult)を作る
# CompareResult = TeleporterGroups.map(v => v.ID ==Argument.ID)
    data modify storage lib: Array append from storage asset:teleporter TeleporterGroups[].ID
    data modify storage lib: CompareTarget set from storage api: Argument.ID
    function lib:array/compare_single
# CompareResultを元に同一のIDの要素を取り出す
# TargetTeleporterData = TeleporterGroups.filiter((v, i) => CompareResult[i]).head
    data modify storage lib: Array set from storage asset:teleporter TeleporterGroups
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    data modify storage asset:teleporter TargetTeleporterData set from storage lib: Array[0]
# TeleporterGroupsからTargetデータを消した状態にする
# TeleporterGroups = TeleporterGroups.filiter((v, i) => !CompareResult[i])
    data modify storage lib: Array set from storage asset:teleporter TeleporterGroups
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask
    data modify storage asset:teleporter TeleporterGroups set from storage lib: Array
# セッション閉じる
    function lib:array/session/close