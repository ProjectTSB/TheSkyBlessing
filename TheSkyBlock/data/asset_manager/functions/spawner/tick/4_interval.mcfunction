#> asset_manager:spawner/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理
    execute if data storage global {IsProduction:1b} if score $LoadTime Global matches 160.. run function #asset:spawner/register
# スポナーの見た目
    execute at @e[type=snowball,tag=Spawner,tag=!BreakSpawner] run function asset_manager:spawner/tick/particle
