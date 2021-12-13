#> player_manager:god/change_believe/check-1/on_click
#
#
#
# @within function player_manager:god/change_believe/check-1/listener

# エラー値
    execute unless score @s Believe matches 1 run function lib:message/invalid_operation
# 正常値
    execute if score @s Believe matches 1 run function oh_my_dat:please
    execute if score @s Believe matches 1 unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function player_manager:god/change_believe/change
    execute if score @s Believe matches 1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LostItems[0] run function player_manager:god/change_believe/check-2/
# リセット
    execute unless score @s Believe matches 0 run scoreboard players reset @s Believe