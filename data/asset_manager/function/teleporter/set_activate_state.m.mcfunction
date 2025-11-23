#> asset_manager:teleporter/set_activate_state.m
#
# IDが一致するテレポーターのEntityStorage及びマスタの要素に対し、起動状態を更新する
#
# IDに適合するデータが無い場合、一切の副作用は発生しない
#
# @input args ID: int
# @within function api:teleporter/set_activation_state/from_id

# テレポーターのデータを取得する
    function asset_manager:teleporter/common/append_or_reorder_teleporters.m with storage api: Argument
# バージョンを更新する
    function asset_manager:teleporter/common/increment_activation_state_version
# 状態を更新する
    $data modify storage asset:teleporter Teleporters[-1].Data.ActivationState set value "$(ActivationState)"
