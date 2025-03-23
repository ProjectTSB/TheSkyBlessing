#> asset_manager:common/datapack/update_state/upsert/
#
#
#
# @within function
#   asset_manager:common/datapack/update_state/
#   asset_manager:common/datapack/update_state/upsert/

# 末尾を取得
# 一回の呼び出しで同じデータパックが2回呼び出されることは想定していない
    data modify storage asset:datapack Elem set from storage asset:datapack ActivationState[-1]
# 状態を更新
    function asset_manager:common/datapack/update_state/upsert/do.m with storage asset:datapack Elem
# リセット
    data remove storage asset:datapack Elem
# 要素が残っているなら再帰
    data remove storage asset:datapack ActivationState[-1]
    execute if data storage asset:datapack ActivationState[0] run function asset_manager:common/datapack/update_state/upsert/
