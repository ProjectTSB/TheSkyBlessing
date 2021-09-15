#> asset_manager:spawner/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理
    function #asset:spawner/register
# スポナーの見た目
    execute at @e[type=snowball,tag=Spawner,tag=!BreakSpawner] run function asset_manager:spawner/tick/particle
