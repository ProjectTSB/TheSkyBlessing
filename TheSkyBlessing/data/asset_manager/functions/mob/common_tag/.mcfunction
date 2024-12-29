#> asset_manager:mob/common_tag/
#
# 汎用タグの処理
#
# @within function
#   asset_manager:mob/tick/
#   core:tick/

execute if entity @s[tag=!AllowRideBannedVehicle,predicate=lib:is_placeable_vehicle] run function asset_manager:mob/common_tag/break_rides
execute if entity @s[tag=AutoKillWhenDieVehicle] unless predicate lib:is_vehicle run kill @s
execute if entity @s[tag=AutoKillWhenDiePassenger] unless predicate lib:is_passenger run kill @s
execute if entity @s[tag=AlwaysInvisible] run effect give @s invisibility 999999 0 true
execute if entity @s[tag=AlwaysSlowFall] run effect give @s slow_falling 999999 0 true
execute if entity @s[tag=AlwaysBurn] unless predicate lib:is_burning run data modify entity @s Fire set value 32767s
execute if entity @s[tag=AntiBurn] if predicate lib:is_burning run data modify entity @s Fire set value 0s
execute if entity @s[tag=AntiFallDamage] run function asset_manager:mob/common_tag/check_fall_distance
execute if entity @s[type=skeleton,tag=!Frozen] run function asset_manager:mob/common_tag/check_frozen
execute if entity @s[type=#lib:drownable,tag=!Drown,predicate=lib:is_in_water/] run function asset_manager:mob/common_tag/check_drowning
execute unless score @s VoidActionTime matches -2147483648..2147483647 if entity @s[tag=AntiVoid] if predicate lib:is_void run scoreboard players set @s VoidActionTime 0
execute if score @s VoidActionTime matches -2147483648..2147483647 run function asset_manager:mob/common_tag/anti_void_action/
