#> asset_manager:teleporter/update_activation_state/
#
#
#
# @within function api:teleporter/set_activation_state

# IDから対象テレポーターのEntityStorageを取得する
    function asset_manager:teleporter/update_activation_state/get_storage_from_teleporter_id
# 状態を更新する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationState set from storage api: Argument.ActivationState
# IDから対象テレポーターのマスタデータを取得する
    function asset_manager:teleporter/update_activation_state/pop_master_data_from_teleporter_id
# 状態を更新する
    data modify storage asset:teleporter TargetTeleporterData.ActicationKind set from storage api: Argument.ActivationState
# 元に戻す
    data modify storage asset:teleporter Teleporters append from storage asset:teleporter TargetTeleporterData
# リセット
    data remove storage asset:teleporter TargetTeleporterData