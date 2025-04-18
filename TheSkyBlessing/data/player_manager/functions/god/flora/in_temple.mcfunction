#> player_manager:god/flora/in_temple
#
#
#
# @within function world_manager:area/01-01.flora_temple

# 教徒
    execute if entity @s[tag=Believe.Flora] run function player_manager:god/mercy/
# 異教徒
    execute if entity @s[tag=!Believe.Flora] run function player_manager:god/common/send_another_believer_in_temple_buttons
