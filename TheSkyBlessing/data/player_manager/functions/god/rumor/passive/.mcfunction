#> player_manager:god/rumor/passive/
#
#
#
# @within function player_manager:god/tick

execute if entity @s[tag=PassiveBuff] unless entity @e[type=!player,tag=Friend,distance=..12,limit=1] run function player_manager:god/rumor/passive/remove
execute if entity @s[tag=PassiveBuff] run particle dust 1 0.3 1 0.4 ~ ~1 ~ 0.3 0.3 0.3 0 1 normal
execute unless entity @s[tag=PassiveBuff] if entity @e[type=!player,tag=Friend,distance=..12,limit=1] run function player_manager:god/rumor/passive/set