#> asset:mob/0210.aurora_eye/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# スケジュールループ再開
    execute if entity @s[scores={5U.DebuffTime=0..}] run schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace