#> asset:artifact/enum/index/4
#
#
#
# @output storage asset:artifact Enum.Slot
# @public

data modify storage asset:artifact Enum.Slot set value "legs"
return run data get storage asset:artifact Enum.Slot
