#> asset_manager:sacred_treasure/cooldown/main_bar/append_bar_right
#
#
#
# @within function
#   asset_manager:sacred_treasure/cooldown/main_bar/
#   asset_manager:sacred_treasure/cooldown/main_bar/append_bar_right

data modify storage asset:sacred_treasure MainBarMessage append value '{"text":"|.","color":"#233645"}'
scoreboard players remove $Value Temporary 1
execute if score $Value Temporary matches 1.. run function asset_manager:sacred_treasure/cooldown/main_bar/append_bar_right