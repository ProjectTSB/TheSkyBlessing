#> asset:mob/0210.aurora_eye/player_process/01.schedule_loop
#
# 専用デバフのスケジュールループを行うよ
#
# @within function
#   asset:mob/0210.aurora_eye/player_process/01.schedule_loop
#   asset:mob/0210.aurora_eye/tick/3.attack
#   asset:mob/0210.aurora_eye/rejoin_process
#   asset:mob/0211.aurora_bullet/tick/3.hit

# プレイヤーの処理
    execute as @a[tag=5U.Debuff] at @s run function asset:mob/0210.aurora_eye/player_process/02.main

# スケジュールループ
    execute if entity @a[tag=5U.Debuff,limit=1] run schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace