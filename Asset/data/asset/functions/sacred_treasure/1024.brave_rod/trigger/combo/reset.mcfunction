#> asset:sacred_treasure/1024.brave_rod/trigger/combo/reset
#
#
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/combo/main

tag @s remove SD.FinishCoolTime
playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 2
scoreboard players reset @s[scores={SD.Wait=0}] SD.Combo
scoreboard players reset @s[scores={SD.Wait=0}] SD.Wait