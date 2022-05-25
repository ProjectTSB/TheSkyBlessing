#> asset_manager:sacred_treasure/cooldown/main_bar/append_bar_left
#
#
#
# @within function
#   asset_manager:sacred_treasure/cooldown/main_bar/
#   asset_manager:sacred_treasure/cooldown/main_bar/append_bar_left

data modify storage asset:sacred_treasure MainBarMessage append value '{"text":"|."}'
scoreboard players remove $LeftBar Temporary 1
execute if score $LeftBar Temporary matches 1.. run function asset_manager:sacred_treasure/cooldown/main_bar/append_bar_left