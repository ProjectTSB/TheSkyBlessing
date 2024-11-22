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
# 該当するテレポーターが存在するならば更新する
    execute if score $TeleporterExists Temporary matches 1 run function asset_manager:teleporter/update_activation_state/update_state

# リセット
    scoreboard players reset $TeleporterExists Temporary
    data remove storage asset:teleporter TargetTeleporterData
