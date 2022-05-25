#> asset:mob/0210.aurora_eye/player_process/02.main
#
# 主な処理を行うよ
#
# @within function asset:mob/0210.aurora_eye/player_process/01.schedule_loop

#> Private
# @private
    #declare score_holder $Temp

# vfx
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.2 ~ 0.4 0.5 0.4 1 2 normal

# 定期的にMPを割合で減少させる
    scoreboard players operation $Temp Temporary = @s 5U.DebuffTime
    scoreboard players operation $Temp Temporary %= $40 Const
    execute if score $Temp Temporary matches 0 run function asset:mob/0210.aurora_eye/player_process/03.mp_reduction
    scoreboard players reset $Temp Temporary

# 効果時間の処理
    scoreboard players remove @s 5U.DebuffTime 1

# プレイヤー死亡時に終了
    execute if entity @s[tag=Death] run function asset:mob/0210.aurora_eye/player_process/04.end

# 終了
    execute if entity @s[scores={5U.DebuffTime=..0}] run function asset:mob/0210.aurora_eye/player_process/04.end

# スケジュールループ
    execute if entity @s[scores={5U.DebuffTime=0..}] run schedule function asset:mob/0210.aurora_eye/player_process/01.schedule_loop 1t replace