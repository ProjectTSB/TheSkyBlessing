#> debug:artifact/core/update_all/
#
#
#
# @within function debug:artifact/update_all

#> Private
# @within function debug:artifact/core/update_all/*
#declare storage debug:artifact

data modify storage debug:artifact Inventory set from entity @s Inventory

data modify storage api: Argument.Inventory set value []
execute if data storage debug:artifact Inventory[0] run function debug:artifact/core/update_all/foreach

function api:inventory/set
