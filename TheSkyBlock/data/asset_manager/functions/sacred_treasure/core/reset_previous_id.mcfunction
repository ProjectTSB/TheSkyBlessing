#> asset_manager:sacred_treasure/core/reset_previous_id
#
#
#
# @within function
#   asset_manager:sacred_treasure/core/tick
#   asset_manager:sacred_treasure/core/set_previous_id

data modify storage asset:id Previous.mainhand set value -1
data modify storage asset:id Previous.offhand set value -1
data modify storage asset:id Previous.feet set value -1
data modify storage asset:id Previous.legs set value -1
data modify storage asset:id Previous.chest set value -1
data modify storage asset:id Previous.head set value -1