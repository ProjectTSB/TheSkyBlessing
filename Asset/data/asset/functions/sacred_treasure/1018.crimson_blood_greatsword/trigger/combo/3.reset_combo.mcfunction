#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/3.reset_combo
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/2.main

tag @s remove SA.FinishCoolTime
playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
scoreboard players reset @s[scores={SA.Wait=0}] SA.Combo
scoreboard players reset @s[scores={SA.Wait=0}] SA.Wait
