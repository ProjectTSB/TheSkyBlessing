#> player_manager:god/rumor/in_temple
#
#
#
# @within function world_manager:area/01-03.rumor_temple

# 教徒
    execute if entity @s[tag=Believe.Rumor] run function player_manager:god/mercy/
# 異教徒
    execute if entity @s[tag=!Believe.Rumor] run function player_manager:god/change_believe/
