#> asset_manager:artifact/cooldown/mini_bar/store_lcd_bar
#
#
#
# @within function asset_manager:artifact/cooldown/mini_bar/construct_msgs_and_revert_lcds

execute if score $NormalizedValue Temporary matches 00 run data modify storage asset:artifact LCDMessages append value '{"text":"a","color":"white"}'
execute if score $NormalizedValue Temporary matches 01 run data modify storage asset:artifact LCDMessages append value '{"text":"b","color":"white"}'
execute if score $NormalizedValue Temporary matches 02 run data modify storage asset:artifact LCDMessages append value '{"text":"c","color":"white"}'
execute if score $NormalizedValue Temporary matches 03 run data modify storage asset:artifact LCDMessages append value '{"text":"d","color":"white"}'
execute if score $NormalizedValue Temporary matches 04 run data modify storage asset:artifact LCDMessages append value '{"text":"e","color":"white"}'
execute if score $NormalizedValue Temporary matches 05 run data modify storage asset:artifact LCDMessages append value '{"text":"f","color":"white"}'
execute if score $NormalizedValue Temporary matches 06 run data modify storage asset:artifact LCDMessages append value '{"text":"g","color":"white"}'
execute if score $NormalizedValue Temporary matches 07 run data modify storage asset:artifact LCDMessages append value '{"text":"h","color":"white"}'
execute if score $NormalizedValue Temporary matches 08 run data modify storage asset:artifact LCDMessages append value '{"text":"i","color":"white"}'
execute if score $NormalizedValue Temporary matches 09 run data modify storage asset:artifact LCDMessages append value '{"text":"j","color":"white"}'
execute if score $NormalizedValue Temporary matches 10 run data modify storage asset:artifact LCDMessages append value '{"text":"k","color":"white"}'
execute if score $NormalizedValue Temporary matches 11 run data modify storage asset:artifact LCDMessages append value '{"text":"l","color":"white"}'
execute if score $NormalizedValue Temporary matches 12 run data modify storage asset:artifact LCDMessages append value '{"text":"m","color":"white"}'
execute if score $NormalizedValue Temporary matches 13 run data modify storage asset:artifact LCDMessages append value '{"text":"n","color":"white"}'
execute if score $NormalizedValue Temporary matches 14 run data modify storage asset:artifact LCDMessages append value '{"text":"o","color":"white"}'
execute if score $NormalizedValue Temporary matches 15 run data modify storage asset:artifact LCDMessages append value '{"text":"p","color":"white"}'
execute if score $NormalizedValue Temporary matches 16 run data modify storage asset:artifact LCDMessages append value '{"text":"q","color":"white"}'
