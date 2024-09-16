#> player_manager:absorption/
#
# actionbarの緩衝体力表示
#
# @within function core:tick/player/

execute unless score @s PlayerAbsorption matches 1.. run scoreboard players set @s PlayerAbsorption 0
execute store result storage player_manager:absorption Set.Value int 0.01 run scoreboard players get @s PlayerAbsorption
function player_manager:absorption/set.m with storage player_manager:absorption Set
