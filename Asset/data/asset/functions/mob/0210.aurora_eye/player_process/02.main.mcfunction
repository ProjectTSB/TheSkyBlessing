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
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 run scoreboard players set $Fluctuation Lib -12
    execute if score $Interval Temporary matches 0 run function lib:mp/fluctuation
    execute if score $Interval Temporary matches 0 run playsound block.beacon.power_select player @a ~ ~ ~ 0.2 2 0
    scoreboard players reset $Interval Temporary

# 効果時間の処理
    scoreboard players add @s 5U.DebuffTime 1

# スケジュールループ
    execute if entity @s[scores={5U.DebuffTime=0..}] run schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace

# プレイヤー死亡時に終了
    execute if entity @s[tag=Death] run function asset:mob/0210.aurora_eye/player_process/03.end_debuff

# 終了
    execute if entity @s[scores={5U.DebuffTime=..0}] run function asset:mob/0210.aurora_eye/player_process/03.end_debuff