#> world_manager:area/04.end/on_entered
#
#
#
# @within function world_manager:area/04.end/

# ゲームモードをアドベンチャーに
    gamemode adventure @s[gamemode=!creative]
# エンドラが沸いてる可能性があるのでさよならしようね
    kill @e[type=ender_dragon]