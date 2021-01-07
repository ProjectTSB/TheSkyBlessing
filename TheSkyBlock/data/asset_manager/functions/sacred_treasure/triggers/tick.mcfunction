#> asset_manager:sacred_treasure/triggers/tick
#
# 各神器処理へデータ受け渡し
#
# @within function core:tick

# IDの代入
    function asset_manager:sacred_treasure/core/data_put/from_player
# 神器側に受け渡し
    function #asset:sacred_treasure/tick
# リセット
    data remove storage asset:sacred_treasure Items