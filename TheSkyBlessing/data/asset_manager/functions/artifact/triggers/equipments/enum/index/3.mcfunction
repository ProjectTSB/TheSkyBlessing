#> asset_manager:artifact/triggers/equipments/enum/index/3
#
#
#
# @output storage asset:artifact Enum.Slot
# @public

data modify storage asset:artifact Enum.Slot set value "feet"
return run data get storage asset:artifact Enum.Slot
