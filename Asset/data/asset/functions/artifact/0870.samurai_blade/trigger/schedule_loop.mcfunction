#> asset:artifact/0870.samurai_blade/trigger/schedule_loop
#
# 常に実行されている
#
# @within function
#   asset:artifact/0870.samurai_blade/trigger/3.main
#   asset:artifact/0870.samurai_blade/trigger/schedule_loop
#   asset:artifact/0870.samurai_blade/trigger/rejoin_process

# Timeがある状態ならスキルを発動している
    execute as @a[scores={O6.Time=1..}] at @s run function asset:artifact/0870.samurai_blade/trigger/skill_list/skill_active
# WaitTimeをへらす
    scoreboard players remove @a[scores={O6.WaitingTime=1..}] O6.WaitingTime 1

# WaitTimeがなくなったらresetを実行する
    execute if entity @a[scores={O6.WaitingTime=0},limit=1] as @a[scores={O6.WaitingTime=0}] at @s run function asset:artifact/0870.samurai_blade/trigger/reset
# ループさせる
    execute if entity @a[scores={O6.WaitingTime=1..},limit=1] run schedule function asset:artifact/0870.samurai_blade/trigger/schedule_loop 1t replace