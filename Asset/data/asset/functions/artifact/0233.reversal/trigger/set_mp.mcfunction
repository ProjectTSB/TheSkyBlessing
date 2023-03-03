#> asset:artifact/0233.reversal/trigger/set_mp
#
#
#
# @within function asset:artifact/0233.reversal/trigger/3.main
execute store result score $6H.MP Temporary run function lib:mp/get
execute store result score $6H.SetMP Temporary run function lib:mp/get_max
scoreboard players operation $6H.SetMP Temporary -= $6H.MP Temporary
execute store result score $Set Lib run scoreboard players get $6H.SetMP Temporary
function lib:mp/set
