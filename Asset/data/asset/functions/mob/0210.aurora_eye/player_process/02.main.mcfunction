#> asset:mob/0210.aurora_eye/player_process/02.main
#
# 主な処理を行うよ
#
# @within function asset:mob/0210.aurora_eye/player_process/01.schedule_loop

#> Private
# @private
    #declare score_holder $Interval

# vfx
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.2 ~ 0.4 0.5 0.4 1 2 normal

# 定期的にMPを減少させる
    scoreboard players operation $Interval Temporary = @s 5U.DebuffTime
    scoreboard players operation $Interval Temporary /= $40 Const
    execute if score $Interval Temporary matches 0 run scoreboard players set $Fluctuation Lib -30
    execute if score $Interval Temporary matches 0 run function lib:mp/fluctuation

# スケジュールループ
    execute if entity @s[scores={5U.DebuffTime=..200}] run schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace

# 効果時間の処理
    scoreboard players remove @s 5U.DebuffTime 1

# 効果時間終了
    execute if entity @s[scores={5U.DebuffTime=200..}] run function asset:mob/0210.aurora_eye/player_process/03.end_debuff