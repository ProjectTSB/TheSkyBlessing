#> asset_manager:sacred_treasure/triggers/click.carrot
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/click.carrot

# IDの代入
    function asset_manager:sacred_treasure/core/data_put/from_player
# 神器側に受け渡し
    function #asset:sacred_treasure/click.carrot_on_a_stick
# リセット
    data remove storage asset:sacred_treasure Items