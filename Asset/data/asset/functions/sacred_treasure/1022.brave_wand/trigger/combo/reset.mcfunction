#> asset:sacred_treasure/1022.brave_wand/trigger/combo/reset
#
#
#
# @within function asset:sacred_treasure/1022.brave_wand/trigger/combo/main

tag @s remove SE.FinishCoolTime
playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 2
scoreboard players reset @s SE.Combo
scoreboard players reset @s SE.Wait
scoreboard players reset @s SE.Burst