#> asset:artifact/1024.brave_rod/trigger/combo/reset
#
#
#
# @within function asset:artifact/1024.brave_rod/trigger/combo/main

tag @s remove SG.FinishCoolTime
playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 2
scoreboard players reset @s SG.Combo
scoreboard players reset @s SG.Wait
scoreboard players reset @s SG.Burst