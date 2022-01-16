#> player_manager:god/change_believe/on_check_blessing
#
#
#
# @within function player_manager:god/change_believe/check-1/on_click

execute if score @s InSubArea matches 10 run function lib:message/god/flora/blessing
execute if score @s InSubArea matches 11 run function lib:message/god/nyaptov/blessing
execute if score @s InSubArea matches 12 run function lib:message/god/rumor/blessing
execute if score @s InSubArea matches 13 run function lib:message/god/urban/blessing
execute if score @s InSubArea matches 14 run function lib:message/god/wi-ki/blessing

function player_manager:god/change_believe/check-1/