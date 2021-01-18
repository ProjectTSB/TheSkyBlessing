#> asset_manager:sacred_treasure/triggers/use_item
#
# 各神器処理へデータ受け渡し
#
# @within function core:handler/consume_item

# IDの代入
    function asset_manager:sacred_treasure/core/data_put/from_user_storage
# 神器側に受け渡し
    function #asset:sacred_treasure/use_item
# リセット
    data remove storage asset:context Items