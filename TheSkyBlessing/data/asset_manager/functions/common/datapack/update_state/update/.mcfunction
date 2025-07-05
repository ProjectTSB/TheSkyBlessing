#> asset_manager:common/datapack/update_state/update/
#
#
#
# @within function
#   asset_manager:common/datapack/update_state/
#   asset_manager:common/datapack/update_state/update/

# ローディング中オブジェクト召喚
    data modify storage api: Argument.ID set value 2255
    execute positioned ~ ~1.5 ~ run function api:object/summon
# 末尾を取得
    data modify storage asset:datapack Elem set from storage asset:datapack DatapackStateBuffer[-1]
# パスを取得する
    function asset_manager:common/datapack/update_state/update/get_path/
# 状態を更新する
    execute if data storage asset:datapack Elem{Active: true} run function asset_manager:common/datapack/update_state/update/enable.m with storage asset:datapack Elem
    execute if data storage asset:datapack Elem{Active:false} run function asset_manager:common/datapack/update_state/update/disable.m with storage asset:datapack Elem
# リセット
    data remove storage asset:datapack Elem
# 要素が残っているなら再帰
    data remove storage asset:datapack DatapackStateBuffer[-1]
    execute if data storage asset:datapack DatapackStateBuffer[0] run function asset_manager:common/datapack/update_state/update/
