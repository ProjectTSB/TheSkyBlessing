#> asset_manager:artifact/cooldown/main_bar/append_bar_left
#
#
#
# @within function
#   asset_manager:artifact/cooldown/main_bar/
#   asset_manager:artifact/cooldown/main_bar/append_bar_left

data modify storage asset:artifact MainBarMessage append value '{"text":"|."}'
scoreboard players remove $LeftBar Temporary 1
execute if score $LeftBar Temporary matches 1.. run function asset_manager:artifact/cooldown/main_bar/append_bar_left