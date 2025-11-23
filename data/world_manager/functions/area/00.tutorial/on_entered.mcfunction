#> world_manager:area/00.tutorial/on_entered
#
#
#
# @within function world_manager:area/00.tutorial/

# ゲームモードをアドベンチャーに
    gamemode adventure @s[gamemode=!creative]
# 初期スポーンだと方向指定が効かないので無理やり回転させる
    execute if entity @s[tag=!TutorialEnded] run tp @s ~ ~ ~ 90 0
