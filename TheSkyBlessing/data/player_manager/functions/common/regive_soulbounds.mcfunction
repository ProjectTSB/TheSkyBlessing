#> player_manager:common/regive_soulbounds
#
#
#
# @within function
#   player_manager:lost_item/drop/
#   player_manager:grave/build/

data modify storage api: Argument.Inventory append from storage api: Inventory[{tag:{TSB:{SoulBound:true}}}]
function api:inventory/set
