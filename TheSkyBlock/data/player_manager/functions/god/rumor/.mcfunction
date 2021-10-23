#> player_manager:god/rumor/
#
#
#
# @within function world_manager:area/12.rumor_temple

# 教徒
    execute if entity @s[tag=Believe.Rumor] run function player_manager:god/rumor/mercy
# 異教徒
    execute if entity @s[tag=!Believe.Rumor] run function player_manager:god/change_believe/check