#> player_manager:god/change_believe/check-2/on_click
#
#
#
# @within function player_manager:god/change_believe/check-2/listener

# エラー値
    execute unless score @s Believe2 matches 2 run function lib:message/invalid_operation
# 正常値
    execute if score @s Believe2 matches 2 run function player_manager:god/change_believe/on_change
# リセット
    scoreboard players reset @s Believe2