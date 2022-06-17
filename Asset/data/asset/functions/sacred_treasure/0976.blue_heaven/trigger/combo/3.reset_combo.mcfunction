#> asset:sacred_treasure/0976.blue_heaven/trigger/combo/3.reset_combo
#
#
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/combo/2.main

tag @s remove R4.FinishCoolTime
playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
scoreboard players reset @s[scores={R4.Wait=0}] R4.Combo
scoreboard players reset @s[scores={R4.Wait=0}] R4.Wait
