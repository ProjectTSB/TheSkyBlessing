#> asset:mob/0217.medousa_eye/player_process/01.schedule_loop
#
# プレイヤー用スケジュールループだよ
#
# @within function
#   asset:mob/0217.medousa_eye/tick/07.beam_hit
#   asset:mob/0217.medousa_eye/player_process/02.stone_time
#   asset:mob/0217.medousa_eye/rejoin_process

# プレイヤー
    execute as @a[tag=61.Stone] at @s run function asset:mob/0217.medousa_eye/player_process/02.stone_time