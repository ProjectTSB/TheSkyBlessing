#> player_manager:absorption/
#
# 緩衝体力
#
# @within function core:tick/player/

execute if score @s PlayerAbsorption matches 1.. run function player_manager:absorption/construct_message
# execute unless score @s PlayerAbsorption matches 1.. run effect clear @s absorption
