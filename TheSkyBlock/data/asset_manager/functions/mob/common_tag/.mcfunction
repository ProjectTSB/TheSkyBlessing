#> asset_manager:mob/common_tag/
#
# 汎用タグの処理
#
# @within function asset_manager:mob/tick

execute if entity @s[tag=AutoKillWhenDieVehicle] unless predicate lib:is_vehicle run kill @s
execute if entity @s[tag=AlwaysInvisible] run effect give @s invisibility 999999 0 true
execute unless entity @s[tag=!AntiBurn,tag=!AlwaysBurn] run function asset_manager:mob/common_tag/check_burning
execute if entity @s[tag=AntiFallDamage] run function asset_manager:mob/common_tag/check_fall_distance
execute if entity @s[type=skeleton,tag=AntiFrozen] run function asset_manager:mob/common_tag/check_frozen
execute if entity @s[type=#lib:drownable,tag=AntiDrown,predicate=lib:is_in_water/] run function asset_manager:mob/common_tag/check_drowning
