#> asset:sacred_treasure/0967.enhanced_protection/trigger/schedule_task
#
#
#
# @within function
#   asset:sacred_treasure/0967.enhanced_protection/trigger/3.main
#   asset:sacred_treasure/0967.enhanced_protection/trigger/schedule_task


    scoreboard players remove @a[scores={QV.Protected=1..}] QV.Protected 1

    execute at @a[scores={QV.Protected=0..}] run particle dust 0.5 0.5 0.5 0.6 ~ ~1 ~ 0.6 0.6 0.6 1 5
    execute as @a[scores={QV.Protected=0}] run function asset:sacred_treasure/0967.enhanced_protection/trigger/protect_end

    execute if entity @a[scores={QV.Protected=0..},limit=1] run schedule function asset:sacred_treasure/0967.enhanced_protection/trigger/schedule_task 1t