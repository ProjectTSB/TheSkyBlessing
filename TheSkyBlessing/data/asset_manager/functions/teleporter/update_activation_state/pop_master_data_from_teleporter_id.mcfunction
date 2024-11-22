#> asset_manager:teleporter/update_activation_state/pop_master_data_from_teleporter_id
#
# IDの一致するテレポーターのデータをマスタより取り出す
#
# @input storage api: Argument.ID : int
# @output storage asset:teleporter
#   TargetTeleporterData : compound GroupData
#   Teleporters : Teleporters - Teleporters[id=Argument.ID]
# @within function asset_manager:teleporter/update_activation_state/update_state

# セッション開く
    function lib:array/session/open
# 対象テレポーターのGroupIDと、同一のIDを持つ配列の要素のIndex のみがtrueになる配列(CompareResult)を作る
# CompareResult = Teleporters.map(v => v.ID ==Argument.ID)
    data modify storage lib: Array append from storage asset:teleporter Teleporters[].ID
    data modify storage lib: CompareTarget set from storage api: Argument.ID
    function lib:array/compare_single
# CompareResultを元に同一のIDの要素を取り出す
# TargetTeleporterData = Teleporters.filter((v, i) => CompareResult[i]).head
    data modify storage lib: Array set from storage asset:teleporter Teleporters
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    data modify storage asset:teleporter TargetTeleporterData set from storage lib: Array[0]
# TeleportersからTargetデータを消した状態にする
# Teleporters = Teleporters.filter((v, i) => !CompareResult[i])
    data modify storage lib: Array set from storage asset:teleporter Teleporters
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask
    data modify storage asset:teleporter Teleporters set from storage lib: Array
# セッション閉じる
    function lib:array/session/close
