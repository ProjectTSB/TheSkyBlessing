#> player_manager:god/mercy/on_click
#
#
#
# @within function player_manager:god/mercy/listener

# エラー値
    execute unless score @s Believe3 matches 1..2 run function lib:message/invalid_operation
# 正常値
    execute if score @s Believe3 matches 1 run function player_manager:god/mercy/on_check_offering
    execute if score @s Believe3 matches 2 run function player_manager:god/mercy/on_mercy/pre
# リセット
    execute unless score @s Believe3 matches 0 run scoreboard players reset @s Believe3