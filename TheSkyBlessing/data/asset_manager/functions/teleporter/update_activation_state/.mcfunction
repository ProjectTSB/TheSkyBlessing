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

# テレポーターのIDから対象テレポーターのEntityStorageのIDの取得を試みる
    function asset_manager:teleporter/update_activation_state/try_get_storage_id_from_teleporter

# テレポーターのEntityStorageを取得する
    execute if score $TeleporterExists Temporary matches 1 run function oh_its_dat:please
# 状態を更新する
    execute if score $TeleporterExists Temporary matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationState set from storage api: Argument.ActivationState

# IDから対象テレポーターのマスタデータを取得する
    execute if score $TeleporterExists Temporary matches 1 run function asset_manager:teleporter/update_activation_state/pop_master_data_from_teleporter_id
# 状態を更新する
    execute if score $TeleporterExists Temporary matches 1 run data modify storage asset:teleporter TargetTeleporterData.Data.ActivationState set from storage api: Argument.ActivationState
# 元に戻す
    execute if score $TeleporterExists Temporary matches 1 run data modify storage asset:teleporter Teleporters append from storage asset:teleporter TargetTeleporterData

# リセット
    scoreboard players reset $TeleporterExists Temporary
    data remove storage asset:teleporter TargetTeleporterData
