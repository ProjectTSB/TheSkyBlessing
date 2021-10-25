#> player_manager:god/tick
#
#
#
# @within function core:tick/player

# execute if entity @s[tag=Believe.None]
execute if entity @s[tag=Believe.Flora] run function player_manager:god/flora/passive
