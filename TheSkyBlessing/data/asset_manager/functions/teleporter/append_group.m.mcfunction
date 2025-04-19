#> asset_manager:teleporter/append_group.m
#
# IDが一致するテレポーターのEntityStorage及びマスタの要素に対し、グループリストを追加する
#
# IDに適合するデータが無い場合、一切の副作用は発生しない
#
# @input args
#   ID: int
#   GroupID: string
# @within function api:teleporter/modify_groups/add

# テレポーターのデータを取得する
    function asset_manager:teleporter/common/append_or_reorder_teleporters.m with storage api: Argument
# 状態を更新する
    $data modify storage asset:teleporter Teleporters[{ID:$(ID)}].Data.GroupIDs append value "$(GroupID)"
