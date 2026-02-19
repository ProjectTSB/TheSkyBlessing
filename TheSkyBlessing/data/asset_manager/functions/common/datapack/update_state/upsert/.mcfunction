#> asset_manager:common/datapack/update_state/upsert/
#
#
#
# @within function
#   asset_manager:common/datapack/update_state/
#   asset_manager:common/datapack/update_state/upsert/

# 状態を更新
# 一回の呼び出しで同じデータパックが2回呼び出されることは想定していない
    function asset_manager:common/datapack/update_state/upsert/do.m with storage asset:datapack ActivationState[-1]
# 要素が残っているなら再帰
    data remove storage asset:datapack ActivationState[-1]
    execute if data storage asset:datapack ActivationState[0] run function asset_manager:common/datapack/update_state/upsert/
