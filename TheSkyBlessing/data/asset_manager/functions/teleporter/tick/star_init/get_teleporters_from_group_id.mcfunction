#> asset_manager:teleporter/tick/star_init/get_teleporters_from_group_id
#
#
#
# @input storage asset:teleporter TargetGroupID
# @output storage asset:teleporter FilteredTeleporters
#
# @within function asset_manager:teleporter/tick/star_init/

# セッション開く
    function lib:array/session/open
# 対象テレポーターのGrpupIDと、同一のIDを持つ配列の要素のIndex のみがtrueになる配列(CompareResult)を作る
# CompareResult = TeleporterGroups.map(v => v.GroupID == GroupID)
    data modify storage lib: Array append from storage asset:teleporter TeleporterGroups[].GroupID
    data modify storage lib: CompareTarget set from storage asset:teleporter TargetGroupID
    function lib:array/compare_single
# CompareResultを元に同一のIDの要素を取り出す
# FilteredTeleporters = TeleporterGroups.filiter((v, i) => CompareResult[i])
    data modify storage lib: Array set from storage asset:teleporter TeleporterGroups
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    data modify storage asset:teleporter FilteredTeleporters set from storage lib: Array
# セッション閉じる
    function lib:array/session/close
# リセット
    data remove storage asset:teleporter TargetGroupID