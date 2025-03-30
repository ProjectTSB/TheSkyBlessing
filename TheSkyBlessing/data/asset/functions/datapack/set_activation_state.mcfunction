#> asset:datapack/set_activation_state
#
# データパックの有効 / 無効を設定する
#
# @input storage asset:datapack ActivationState [{Datapack: string, Active: boolean}] @ 1..
# @global

execute if data storage asset:datapack ActivationState[0] run function asset_manager:common/datapack/update_state/
