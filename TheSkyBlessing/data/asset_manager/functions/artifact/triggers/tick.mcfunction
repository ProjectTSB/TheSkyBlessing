#> asset_manager:artifact/triggers/tick
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# 神器側に受け渡し
    data modify storage asset:artifact DispatchQueue append from storage asset:artifact Cache[{Event:"tick"}]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
