#> player_manager:god/nyaptov/in_temple
#
#
#
# @within function world_manager:area/11.nyaptov_temple

# 教徒
    execute if entity @s[tag=Believe.Nyaptov] run function player_manager:god/nyaptov/mercy
# 異教徒
    execute if entity @s[tag=!Believe.Nyaptov] run function player_manager:god/change_believe/