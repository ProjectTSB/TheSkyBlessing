#> asset_manager:teleporter/set_activate_state.m
#
# IDが一致するテレポーターのEntityStorage及びマスタの要素に対し、起動状態を更新する
#
# IDに適合するデータが無い場合、一切の副作用は発生しない
#
# @input args
#   ID: int
# @within function api:teleporter/set_activation_state/from_id

# テレポーターのIDから対象テレポーターのEntityStorageのIDの取得を試みる
    scoreboard players reset $ OhMyDatID
    $execute store result score $ OhMyDatID run data get storage asset:teleporter TeleporterOMDMap[{TeleporterID:$(ID)}].OhMyDatID

# テレポーターが存在しなければ return
    execute unless score $ OhMyDatID matches -2147483648..2147483647 run return 0

# テレポーターのEntityStorageを取得する
    function oh_its_dat:please

# ActivationState を更新する
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationState set value "$(State)"
# バージョンを更新する
    function asset_manager:teleporter/common/increment_activation_state_version

# 状態を更新する
    $data modify storage asset:teleporter Teleporters[{ID:$(ID)}].Data.ActivationState set value "$(State)"
