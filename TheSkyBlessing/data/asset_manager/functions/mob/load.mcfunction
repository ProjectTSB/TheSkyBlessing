#> asset_manager:mob/load
#
#
#
# @within function core:load

# 定義データを吹き飛ばす
    data modify storage asset:mob SpawnPool set value [[], [], [], [], []]
# 読み込み
    function #asset:mob/enroll_pool
