#> asset_manager:artifact/triggers/left_click/
#
#
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
    tellraw @p {"nbt":"id","storage":"asset:context"}
# 神器側に受け渡し
    function #asset:artifact/using_item
