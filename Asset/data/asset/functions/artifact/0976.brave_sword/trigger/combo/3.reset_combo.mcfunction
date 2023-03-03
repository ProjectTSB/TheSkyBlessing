#> asset:artifact/0976.brave_sword/trigger/combo/3.reset_combo
#
#
#
# @within function asset:artifact/0976.brave_sword/trigger/combo/2.main

tag @s remove R4.FinishCoolTime
playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
scoreboard players reset @s[scores={R4.Wait=0}] R4.Combo
scoreboard players reset @s[scores={R4.Wait=0}] R4.Wait
