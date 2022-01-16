#> asset_manager:sacred_treasure/triggers/tick
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/new/set_to_current
# 神器側に受け渡し
    function #asset:sacred_treasure/tick
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/new/revert_from_current