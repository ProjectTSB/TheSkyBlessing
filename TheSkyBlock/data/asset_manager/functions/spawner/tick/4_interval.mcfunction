#> asset_manager:spawner/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理 //TODO リリース時に下記のコメントを外す
    # execute if score $LoadTime Global matches 160.. run function #asset:spawner/register
# スポナーの見た目
    execute at @e[type=snowball,tag=Spawner,tag=!BreakSpawner] run function asset_manager:spawner/tick/particle
