#> asset_manager:mob/common_tag/
#
# 汎用タグの処理
#
# @within function asset_manager:mob/tick

execute if entity @s[tag=AutoKillWhenDieVehicle] unless predicate lib:is_vehicle run kill @s
execute if entity @s[tag=AutoKillWhenDiePassenger] unless predicate lib:is_passenger run kill @s
execute if entity @s[tag=AlwaysInvisible] run effect give @s invisibility 999999 0 true
execute if entity @s[tag=AlwaysSlowFall] run effect give @s slow_falling 999999 0 true
execute unless entity @s[tag=!AntiBurn,tag=!AlwaysBurn] run function asset_manager:mob/common_tag/check_burning
execute if entity @s[tag=AntiFallDamage] run function asset_manager:mob/common_tag/check_fall_distance
execute if entity @s[type=skeleton,tag=!Frozen] run function asset_manager:mob/common_tag/check_frozen
execute if entity @s[type=#lib:drownable,tag=!Drown,predicate=lib:is_in_water/] run function asset_manager:mob/common_tag/check_drowning
execute unless score @s VoidActionTime matches -2147483648..2147483647 if entity @s[tag=AntiVoid,y=-2,dy=-100] run scoreboard players set @s VoidActionTime 0
execute if score @s VoidActionTime matches -2147483648..2147483647 run function asset_manager:mob/common_tag/anti_void_action/