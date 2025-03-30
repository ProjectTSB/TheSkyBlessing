#> asset_manager:common/datapack/update_state/update/
#
#
#
# @within function
#   asset_manager:common/datapack/update_state/
#   asset_manager:common/datapack/update_state/update/

# パスを取得する
    function asset_manager:common/datapack/update_state/update/get_path/
# 状態を更新する
    function asset_manager:common/datapack/update_state/update/do.m with storage asset:datapack DatapackStateQueue[-1]
# 要素が残っているなら再帰
    data remove storage asset:datapack DatapackStateQueue[-1]
    execute if data storage asset:datapack DatapackStateQueue[0] run function asset_manager:common/datapack/update_state/update/
