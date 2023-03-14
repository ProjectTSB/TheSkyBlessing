#> asset:artifact/0966.protection/trigger/schedule_task
#
#
#
# @within function
#   asset:artifact/0966.protection/trigger/3.main
#   asset:artifact/0966.protection/trigger/schedule_task


    scoreboard players remove @a[scores={QU.Protected=1..}] QU.Protected 1

    execute at @a[scores={QU.Protected=0..}] run particle dust 0.5 0.5 0.5 0.6 ~ ~1 ~ 0.6 0.6 0.6 1 5
    execute as @a[scores={QU.Protected=0}] run function asset:artifact/0966.protection/trigger/protect_end

    execute if entity @a[scores={QU.Protected=0..},limit=1] run schedule function asset:artifact/0966.protection/trigger/schedule_task 1t