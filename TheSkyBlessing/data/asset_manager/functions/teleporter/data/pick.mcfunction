#> asset_manager:teleporter/data/pick
#
#
#
# @input storage asset:teleporter TargetGroupID
# @output storage asset:teleporter
#   TeleporterGroups
#   TeleporterGroup
#
# @within function
#   asset_manager:teleporter/star_init/
#   asset_manager:teleporter/dynamic_register/do

# セッション開く
    function lib:array/session/open
# 対象テレポーターのGrpupIDと、同一のIDを持つ配列の要素のIndex のみがtrueになる配列(CompareResult)を作る
# CompareResult = TeleporterGroups.map(v => v.ID == GroupID)
    data modify storage lib: Array append from storage asset:teleporter TeleporterGroups[].ID
    data modify storage lib: CompareTarget set from storage asset:teleporter TargetGroupID
    function lib:array/compare_single
# CompareResultを元に同一のIDの要素を取り出す
# TeleporterGroup = TeleporterGroups.filiter((v, i) => CompareResult[i])[0]
    data modify storage lib: Array set from storage asset:teleporter TeleporterGroups
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    data modify storage asset:teleporter TeleporterGroup set from storage lib: Array[0]
# 同様に同一ではない要素を取り出す
# TeleporterGroups = TeleporterGroups.filiter((v, i) => !CompareResult[i])
    data modify storage lib: Array set from storage asset:teleporter TeleporterGroups
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask
    data modify storage asset:teleporter TeleporterGroups set from storage lib: Array
# セッション閉じる
    function lib:array/session/close