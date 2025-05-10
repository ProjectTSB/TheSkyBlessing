#> debug:shulker_container/overworld_a
#
# 実行座標のコンテナ内容をoverworldのShulkerAからコピーします
#
# @private
# @user

# shulker内容取得
    execute in overworld run data modify storage debug: Temp set from block 10000 0 10000 Items
# コンテナ内容更新
    data modify block ~ ~ ~ Items set value []
    data modify block ~ ~ ~ Items set from storage debug: Temp
# reset
    data remove storage debug: Temp
