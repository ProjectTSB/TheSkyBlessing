#> asset_manager:teleporter/update_activation_state/
#
# IDが一致するテレポーターのEntityStorage及びマスタの要素に対し、起動状態を更新する
#
# IDに適合するデータが無い場合、一切の副作用は発生しない
#
# @input storage api:
#   Argument.ID : int
#   Argument.ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
# @within function api:teleporter/set_activation_state/from_id

#> Private
# @private
#declare score_holder $Version

# テレポーターのIDから対象テレポーターのEntityStorageのIDの取得を試みる
    data modify storage asset:teleporter Args.ID set from storage api: Argument.ID
    function asset_manager:teleporter/update_activation_state/try_get_storage_id_from_teleporter.m with storage asset:teleporter Args
    data remove storage asset:teleporter Args.ID

# テレポーターが存在しなければ return
    execute unless score $ OhMyDatID matches -2147483648..2147483647 run return 0

# テレポーターのEntityStorageを取得する
    function oh_its_dat:please

# ActivationState を更新する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationState set from storage api: Argument.ActivationState
# バージョンを更新する
    function asset_manager:teleporter/common/increment_activation_state_version

# IDから対象テレポーターのマスタデータを取得する
    data modify storage asset:teleporter Args.ID set from storage api: Argument.ID
    function asset_manager:teleporter/update_activation_state/pop_master_data_from_teleporter_id.m with storage asset:teleporter Args
    data remove storage asset:teleporter Args.ID
# 状態を更新する
    data modify storage asset:teleporter TargetTeleporterData.Data.ActivationState set from storage api: Argument.ActivationState
# 元に戻す
    data modify storage asset:teleporter Teleporters append from storage asset:teleporter TargetTeleporterData

# リセット
    data remove storage asset:teleporter TargetTeleporterData
