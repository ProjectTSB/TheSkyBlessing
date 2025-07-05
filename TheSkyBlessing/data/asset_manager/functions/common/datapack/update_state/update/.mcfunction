#> asset_manager:common/datapack/update_state/update/
#
#
#
# @within function asset_manager:common/datapack/update_state/

# ローディング中オブジェクト召喚
    data modify storage api: Argument.ID set value 3001
    execute positioned ~ ~1.5 ~ run function api:object/summon

# 再帰スタート
    function asset_manager:common/datapack/update_state/update/foreach
