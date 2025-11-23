#> player_manager:fall_damage/
#
#
#
# @within function core:tick/player/

function api:data_get/on_ground

execute if data storage api: {OnGround:false} run function player_manager:fall_damage/store_fall_distance
execute if data storage api: {OnGround: true} if entity @s[tag=Falling] run function player_manager:fall_damage/deal_for_vulnerable