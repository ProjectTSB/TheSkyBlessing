#> asset_manager:common/datapack/update_state/update/foreach
#
#
#
# @within function
#   asset_manager:common/datapack/update_state/update/
#   asset_manager:common/datapack/update_state/update/foreach

# 末尾を取得
    data modify storage asset:datapack Elem set from storage asset:datapack DatapackStateBuffer[-1]
# 状態を保存する
    function asset_manager:common/datapack/update_state/update/save_state.m with storage asset:datapack Elem
# パスを取得する
    function asset_manager:common/datapack/update_state/update/get_path/
# 状態を更新する
    execute if data storage asset:datapack Elem{Active: true} run function asset_manager:common/datapack/update_state/update/enable.m with storage asset:datapack Elem
    execute if data storage asset:datapack Elem{Active:false} run function asset_manager:common/datapack/update_state/update/disable.m with storage asset:datapack Elem
# リセット
    data remove storage asset:datapack Elem
# 要素が残っているなら再帰
    data remove storage asset:datapack DatapackStateBuffer[-1]
    execute if data storage asset:datapack DatapackStateBuffer[0] run function asset_manager:common/datapack/update_state/update/foreach
