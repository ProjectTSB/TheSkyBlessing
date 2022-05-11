#> player_manager:god/wi-ki/passive/
#
#
#
# @within function player_manager:god/tick

execute if entity @s[tag=PassiveDebuff] unless predicate lib:is_burning run function player_manager:god/wi-ki/passive/remove
execute unless entity @s[tag=PassiveDebuff] if predicate lib:is_burning run function player_manager:god/wi-ki/passive/set