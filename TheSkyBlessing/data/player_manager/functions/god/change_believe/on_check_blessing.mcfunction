#> player_manager:god/change_believe/on_check_blessing
#
#
#
# @within function player_manager:god/change_believe/

execute if score @s InSubArea matches 1 run function lib:message/god/flora/blessing
execute if score @s InSubArea matches 2 run function lib:message/god/nyaptov/blessing
execute if score @s InSubArea matches 3 run function lib:message/god/rumor/blessing
execute if score @s InSubArea matches 4 run function lib:message/god/urban/blessing
execute if score @s InSubArea matches 5 run function lib:message/god/wi-ki/blessing

function player_manager:god/change_believe/
