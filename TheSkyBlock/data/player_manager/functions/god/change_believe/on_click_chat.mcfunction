#> player_manager:god/change_believe/on_click_chat
#
#
#
# @within function player_manager:god/change_believe/listener

# 正常値
    execute if score @s Believe matches 1 run function player_manager:god/change_believe/change
# エラー値
    execute if score @s Believe matches 2.. run function lib:message/invalid_operation
# リセット
    scoreboard players reset @s Believe