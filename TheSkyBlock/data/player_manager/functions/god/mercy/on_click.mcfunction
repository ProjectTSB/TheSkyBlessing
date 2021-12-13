#> player_manager:god/mercy/on_click
#
#
#
# @within function player_manager:god/mercy/listener

# エラー値
    execute unless score @s Believe matches 3..4 run function lib:message/invalid_operation
# 正常値
    execute if score @s Believe matches 3 run function player_manager:god/mercy/offering/send_require_message
    execute if score @s Believe matches 4 run function player_manager:god/mercy/on_mercy
# リセット
    scoreboard players reset @s Believe