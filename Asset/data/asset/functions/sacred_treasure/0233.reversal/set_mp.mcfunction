#> asset:sacred_treasure/0233.reversal/set_mp
#
# MPを設定する
#
# @within function asset:sacred_treasure/0233.reversal/3.main

execute store result score $Set Lib run scoreboard players get @s 6H.SetMP
function lib:mp/set