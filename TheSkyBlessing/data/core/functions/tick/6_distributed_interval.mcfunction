#> core:tick/6_distributed_interval
#
#
#
# @within function core:tick/

# スポナー
    function asset_manager:spawner/tick/6_distributed_interval


# 次のtickのグループを決める
    scoreboard players add $DistributeGroup Global 1
    scoreboard players operation $DistributeGroup Global %= $6 Const