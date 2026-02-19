#> player_manager:god/wi-ki/in_temple
#
#
#
# @within function world_manager:area/01-05.wi-ki_temple

# 教徒
    execute if entity @s[tag=Believe.Wi-ki] run function player_manager:god/common/send_believer_in_temple_menu
# 異教徒
    execute if entity @s[tag=!Believe.Wi-ki] run function player_manager:god/common/send_another_believer_in_temple_buttons
