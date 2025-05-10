#> debug:clone_container/shulker_nether_b
#
# 実行座標のコンテナ内容をthe_netherのShulkerBからコピーします
#
# @private
# @user

# shulker内容取得
    execute in the_nether run data modify storage debug:clone_container Temp set from block 10000 1 10000 Items
# コンテナ内容更新
    data modify block ~ ~ ~ Items set value []
    data modify block ~ ~ ~ Items set from storage debug:clone_container Temp
# reset
    data remove storage debug:clone_container Temp
