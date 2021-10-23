#> player_manager:god/urban/
#
#
#
# @within function world_manager:area/13.urban_temple

# 教徒
    execute if entity @s[tag=Believe.Urban] run function player_manager:god/urban/mercy
# 異教徒
    execute if entity @s[tag=!Believe.Urban] run function player_manager:god/change_believe/check