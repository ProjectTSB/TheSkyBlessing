#> asset_manager:artifact/triggers/equipments/enum/slot/mainhand
#
#
#
# @output storage asset:artifact Enum.Index
# @public

data modify storage asset:artifact Enum.Index set value 1
return run data get storage asset:artifact Enum.Index
