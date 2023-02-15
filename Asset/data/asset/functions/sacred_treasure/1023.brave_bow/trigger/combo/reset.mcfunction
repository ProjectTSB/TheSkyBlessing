#> asset:sacred_treasure/1023.brave_bow/trigger/combo/reset
#
#
#
# @within function asset:sacred_treasure/1023.brave_bow/trigger/combo/main

tag @s remove SF.FinishCoolTime
playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 1 0.7
scoreboard players reset @s SF.Combo
scoreboard players reset @s SF.Wait