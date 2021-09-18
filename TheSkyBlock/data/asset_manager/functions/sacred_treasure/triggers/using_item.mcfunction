#> asset_manager:sacred_treasure/triggers/using_item
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/core/data/pre_event_put/new
# 神器側に受け渡し
    function #asset:sacred_treasure/using_item
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/core/data/post_event_put/new