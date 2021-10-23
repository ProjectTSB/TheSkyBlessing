#> player_manager:god/change_believe/unbelieve
#
#
#
# @within function player_manager:god/change_believe/change

# execute if entity @s[tag=Believe.None]
execute if entity @s[tag=Believe.Flora] run function player_manager:god/flora/unbelieve
execute if entity @s[tag=Believe.Nyaptov] run function player_manager:god/nyaptov/unbelieve
execute if entity @s[tag=Believe.Rumor] run function player_manager:god/rumor/unbelieve
execute if entity @s[tag=Believe.Urban] run function player_manager:god/urban/unbelieve
execute if entity @s[tag=Believe.Wi-ki] run function player_manager:god/wi-ki/unbelieve