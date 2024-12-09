#> player_manager:god/urban/in_temple
#
#
#
# @within function world_manager:area/01-13.urban_temple

# 教徒
    execute if entity @s[tag=Believe.Urban] run function player_manager:god/mercy/
# 異教徒
    execute if entity @s[tag=!Believe.Urban] run function player_manager:god/change_believe/
