#> asset_manager:artifact/triggers/left_click/
#
#
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
    data modify storage asset:temp id.mainhand set from storage asset:context id.mainhand
# 神器側に受け渡し
    function asset_manager:artifact/triggers/left_click/m with storage asset:temp id
