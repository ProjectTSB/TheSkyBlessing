#> asset_manager:artifact/triggers/equipments/enum/index/1
#
#
#
# @output storage asset:artifact Enum.Slot
# @public

data modify storage asset:artifact Enum.Slot set value "mainhand"
return run data get storage asset:artifact Enum.Slot
