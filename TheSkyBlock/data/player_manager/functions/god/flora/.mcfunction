#> player_manager:god/flora/
#
#
#
# @within function world_manager:area/10.flora_temple

# 教徒
    execute if entity @s[tag=Believe.Flora] run function player_manager:god/flora/mercy
# 異教徒
    execute if entity @s[tag=!Believe.Flora] run function player_manager:god/change_believe/