#> core:tick/6_distributed_interval
#
#
#
# @within function
#   core:load_once
#   core:tick/6_distributed_interval

# スポナー
    function asset_manager:spawner/tick/6_distributed_interval


# 次のtickのグループを決める
    scoreboard players add $DistributeGroup Temporary 1
    scoreboard players operation $DistributeGroup Temporary %= $6 Const
    schedule function core:tick/6_distributed_interval 1t