#> player_manager:lost_item/regive_soulbound
#
#
#
# @within function
#   player_manager:lost_item/drop/
#   player_manager:lost_item/take

data modify storage api: Argument.Inventory append from storage api: Inventory[{tag:{TSB:{SoulBound:true}}}]
function api:inventory/set
