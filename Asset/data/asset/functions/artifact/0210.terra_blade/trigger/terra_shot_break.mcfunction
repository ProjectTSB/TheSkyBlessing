#> asset:artifact/0210.terra_blade/trigger/terra_shot_break
#
#
#
# @within function asset:artifact/0210.terra_blade/trigger/*

scoreboard players reset @s 5U.Range
particle minecraft:happy_villager ^ ^ ^-1 0 0 0 1 1 force
particle minecraft:crit ^ ^ ^-1 0 0 0 0.25 5
kill @s