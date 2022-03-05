#> asset:mob/0210.aurora_eye/player_process/02.main
#
# 主な処理を行うよ
#
# @within function asset:mob/0210.aurora_eye/player_process/01.schedule_loop

# vfx
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.2 ~ 0.4 0.5 0.4 1 2 normal

# 効果時間の処理
    scoreboard players remove @s 5U.DebuffTime 1

# 効果時間終了
    execute if entity @s[scores={5U.DebuffTime=..0}] run function asset:mob/0210.aurora_eye/player_process/03.end_debuff
