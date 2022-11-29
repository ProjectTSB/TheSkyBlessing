#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin
execute if entity @p[scores={SA.BloodCharge=0..}] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/sacrifice/1.tick 1t
execute if entity @p[scores={SA.Wait=0..}] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/combo/1.tick 1t
execute if entity @e[type=armor_stand,tag=SA.SlashEntity,limit=1] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slash_entity/1.tick 1t
execute if entity @e[type=marker,tag=SA.SlashShot,limit=1] run schedule function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/1.tick 1t