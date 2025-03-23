#> asset_manager:common/datapack/update_state/
#
# データパックの有効 / 無効を管理する
# 無効であったデータパックが有効化される場合に状態更新を行う
#
# @within function asset:datapack/set_activation_state

# それぞれの要素について upsert する
    execute if data storage asset:datapack ActivationState[0] run function asset_manager:common/datapack/update_state/upsert/
# 有効化するデータパックがあるなら一括で実行
    execute if data storage asset:datapack DatapackStateQueue[{State:"enable"}] run function asset_manager:common/datapack/update_state/update/
# リセット
    data remove storage asset:datapack ActivationState
