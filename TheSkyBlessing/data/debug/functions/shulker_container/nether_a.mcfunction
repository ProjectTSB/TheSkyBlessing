#> debug:shulker_container/nether_a
#
# 実行座標のコンテナ内容をthe_netherのShulkerAからコピーします
#
# @private
# @user

# shulker内容取得
    execute in the_nether run data modify storage debug: Temp set from block 10000 0 10000 Items
# コンテナ内容更新
    data modify block ~ ~ ~ Items set value []
    data modify block ~ ~ ~ Items set from storage debug: Temp
# reset
    data remove storage debug: Temp
