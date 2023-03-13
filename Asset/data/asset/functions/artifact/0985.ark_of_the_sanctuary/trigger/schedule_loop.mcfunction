#> asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop
#
# 常に実行されている
#
# @within function
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop
#   asset:artifact/0985.ark_of_the_sanctuary/trigger/rejoin_process

# Timeがある状態ならスキルを発動している
    execute as @a[scores={RD.Time=1..}] at @s run function asset:artifact/0985.ark_of_the_sanctuary/trigger/skill/skill_active
# WaitTimeをへらす
    scoreboard players remove @a[scores={RD.WaitingTime=1..}] RD.WaitingTime 1

# WaitTimeがなくなったらresetを実行する
    execute if entity @a[scores={RD.WaitingTime=0},limit=1] as @a[scores={RD.WaitingTime=0}] at @s run function asset:artifact/0985.ark_of_the_sanctuary/trigger/reset
# ループさせる
    execute if entity @a[scores={RD.WaitingTime=1..},limit=1] run schedule function asset:artifact/0985.ark_of_the_sanctuary/trigger/schedule_loop 1t replace