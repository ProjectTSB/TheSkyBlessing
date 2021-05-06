#> player_manager:adjust_hunger/respawn.delay
#
#
#
# @within core:handler/respawn.delay

effect give @s saturation 20 0 true
tag @s add AdjustHunger
schedule function player_manager:adjust_hunger/observe 1t replace