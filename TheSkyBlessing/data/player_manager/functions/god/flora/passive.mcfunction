#> player_manager:god/flora/passive
#
#
#
# @within function player_manager:god/tick

execute if predicate lib:weather/is_raining unless predicate player_manager:god/flora/has_high_lvl_regeneration run effect give @s regeneration 5 1 true