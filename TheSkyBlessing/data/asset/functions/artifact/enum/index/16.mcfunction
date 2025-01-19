#> asset:artifact/enum/index/16
#
#
#
# @output storage asset:artifact Enum.Slot
# @public

data modify storage asset:artifact Enum.Slot set value "hotbar"
return run data get storage asset:artifact Enum.Slot
