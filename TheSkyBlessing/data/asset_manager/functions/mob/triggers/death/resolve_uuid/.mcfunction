#> asset_manager:mob/triggers/death/resolve_uuid/
#
#
#
# @within function asset_manager:mob/triggers/death/

data modify storage lib: Argument.BitArray set value []
function asset_manager:mob/triggers/death/resolve_uuid/str2int
function lib:bit_array_to_integer/
execute store result storage asset:context uuid int 1 run scoreboard players get $Return.Number Lib
scoreboard players reset $Return.Number