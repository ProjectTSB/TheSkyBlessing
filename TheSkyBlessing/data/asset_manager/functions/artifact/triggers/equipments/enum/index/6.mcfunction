#> asset_manager:artifact/triggers/equipments/enum/index/6
#
#
#
# @output storage asset:artifact Enum.Slot
# @public

data modify storage asset:artifact Enum.Slot set value "head"
return run data get storage asset:artifact Enum.Slot
