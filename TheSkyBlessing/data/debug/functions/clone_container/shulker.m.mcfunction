#> debug:clone_container/shulker.m
#
# 指定のshulker_boxの内容を実行座標のコンテナにコピーします
#
# @input args
#   _: "overworldA" | "overworldB" | "the_netherA" | "the_netherB" | "the_endA" | "the_endB"
# @private
# @user

#> ディメンションを跨ぐまで保持する用
# @private
    #declare storage debug:clone_container

# 引数取得
    $data modify storage debug:clone_container Arg set value $(_)
# shulker内容取得
    execute if data storage debug:clone_container {Arg:"overworldA"} in overworld run data modify storage debug:clone_container Items set from block 10000 0 10000 Items
    execute if data storage debug:clone_container {Arg:"overworldB"} in overworld run data modify storage debug:clone_container Items set from block 10000 1 10000 Items
    execute if data storage debug:clone_container {Arg:"the_netherA"} in the_nether run data modify storage debug:clone_container Items set from block 10000 0 10000 Items
    execute if data storage debug:clone_container {Arg:"the_netherB"} in the_nether run data modify storage debug:clone_container Items set from block 10000 1 10000 Items
    execute if data storage debug:clone_container {Arg:"the_endA"} in the_end run data modify storage debug:clone_container Items set from block 10000 0 10000 Items
    execute if data storage debug:clone_container {Arg:"the_endB"} in the_end run data modify storage debug:clone_container Items set from block 10000 1 10000 Items
# コンテナ内容更新
    data modify block ~ ~ ~ Items set value []
    data modify block ~ ~ ~ Items set from storage debug:clone_container Items
# reset
    data remove storage debug:clone_container Arg
    data remove storage debug:clone_container Items
