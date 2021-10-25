#> player_manager:god/tick
#
#
#
# @within function core:tick/player

# execute if entity @s[tag=Believe.None]
execute if entity @s[tag=Believe.Flora] run function player_manager:god/flora/passive
execute if entity @s[tag=Believe.Nyaptov] run function player_manager:god/nyaptov/passive
execute if entity @s[tag=Believe.Rumor] run function player_manager:god/rumor/passive/
