#> world_manager:area/00-99.world-spawn
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 99
# チュートリアル完了済フラグが付いていたらTPする
    execute if entity @s[tag=TutorialEnded] run tp 23.5 3.5 24.5
# 初期スポーンだと方向指定が効かないので無理やり回転させる
    execute unless score @s InSubArea matches 99 if entity @s[tag=!TutorialEnded] run tp @s ~ ~ ~ 270 0
