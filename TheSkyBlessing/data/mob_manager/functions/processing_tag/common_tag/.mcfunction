#> mob_manager:processing_tag/common_tag/
#
# 汎用タグの処理
#
# @within function mob_manager:processing_tag/

execute if entity @s[tag=!AllowRideBannedVehicle,predicate=lib:is_placeable_vehicle] run function mob_manager:processing_tag/common_tag/break_rides
execute if entity @s[tag=AutoKillWhenDieVehicle] unless predicate lib:is_vehicle if entity @s[type=#lib:living] run function api:mob/kill
execute if entity @s[tag=AutoKillWhenDieVehicle] unless predicate lib:is_vehicle unless entity @s[type=#lib:living] run kill @s
execute if entity @s[tag=AutoKillWhenDiePassenger] unless predicate lib:is_passenger if entity @s[type=#lib:living] run function api:mob/kill
execute if entity @s[tag=AutoKillWhenDiePassenger] unless predicate lib:is_passenger unless entity @s[type=#lib:living] run kill @s
execute if entity @s[tag=AlwaysInvisible] run effect give @s invisibility 999999 0 true
execute if entity @s[tag=AlwaysSlowFall] run effect give @s slow_falling 999999 0 true
execute if entity @s[tag=AlwaysBurn] unless predicate lib:is_burning run data modify entity @s Fire set value 32767s
execute if entity @s[tag=AntiBurn] if predicate lib:is_burning run data modify entity @s Fire set value 0s
execute if entity @s[tag=AntiFallDamage] run function mob_manager:processing_tag/common_tag/check_fall_distance
execute if entity @s[type=skeleton,tag=!Frozen] run function mob_manager:processing_tag/common_tag/check_frozen
execute if entity @s[type=#lib:drownable,tag=!Drown] anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1111111119389534 ~ if predicate lib:in_water/include_flowing run data modify entity @s InWaterTime set value -999999
execute unless score @s VoidActionTime matches -2147483648..2147483647 if entity @s[tag=AntiVoid] if predicate lib:is_void run scoreboard players set @s VoidActionTime 0
execute if score @s VoidActionTime matches -2147483648..2147483647 run function mob_manager:processing_tag/common_tag/anti_void_action/
