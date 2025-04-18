#> player_manager:god/nyaptov/in_temple
#
#
#
# @within function world_manager:area/01-02.nyaptov_temple

# 教徒
    execute if entity @s[tag=Believe.Nyaptov] run function player_manager:god/mercy/
# 異教徒
    execute if entity @s[tag=!Believe.Nyaptov] run function player_manager:god/common/send_another_believer_in_temple_buttons
