#> asset_manager:artifact/triggers/event/sneak/get_sneak_time/hotbar.m
#
#
#
# @input args InvSlot : int
# @within function asset_manager:artifact/triggers/event/sneak/get_sneak_time/

$return run scoreboard players get @s Sneak.Hotbar$(InvSlot)
