#> asset:mob/0210.aurora_eye/player_process/01.schedule_loop
#
# 専用デバフのスケジュールループを行うよ
#
# @within function
#   asset:mob/0210.aurora_eye/player_process/02.main
#   asset:mob/0210.aurora_eye/tick/3.attack
#   asset:mob/0210.aurora_eye/rejoin_process
#   asset:mob/0211.aurora_bullet/tick/3.hit

# プレイヤーの処理
    execute as @a[scores={5U.DebuffTime=0..}] at @s run function asset:mob/0210.aurora_eye/player_process/02.main