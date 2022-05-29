#> mob_manager:init/multiplay_multiplier/angel
#
#
#
# @input score MobHealthMax
# @output score MobHealthMax
# @within function asset_manager:mob/summon/set_data

scoreboard players operation @s MobHealthMax *= $PlayerCount Global