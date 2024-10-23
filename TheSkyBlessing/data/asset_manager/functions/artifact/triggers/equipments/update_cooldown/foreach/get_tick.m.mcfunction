#> asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_tick.m
# @input args
#   MaxLCD : int
# @within function asset_manager:artifact/triggers/equipments/update_cooldown/foreach/

$execute store result score $LatestUsedTick Temporary run data get storage asset:artifact CopiedItemData[-1].Triggers[{LocalCooldown:$(MaxLCD)}].LatestUseTick
data remove storage asset:artifact MaxLCD
