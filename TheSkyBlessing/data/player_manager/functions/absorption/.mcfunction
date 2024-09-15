#> player_manager:absorption/
#
# actionbarの緩衝体力表示
#
# @within function core:tick/player/

execute if score @s PlayerAbsorption matches 1.. run function player_manager:absorption/construct_message
execute unless score @s PlayerAbsorption matches 1.. run effect clear @s absorption
execute unless score @s PlayerAbsorption matches 1.. run scoreboard players set @s PlayerAbsorption 0
