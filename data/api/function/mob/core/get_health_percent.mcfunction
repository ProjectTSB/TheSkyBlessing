#> api:mob/core/get_health_percent
#
#
#
# @within function api:mob/get_health_percent

#> 計算用スコアホルダー
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 現在体力を割合で出す
    scoreboard players operation $Health Temporary = @s MobHealth
    execute store result score $MaxHealth Temporary run scoreboard players get @s MobHealthMax
    scoreboard players operation $MaxHealth Temporary /= $100 Const

# 計算結果を api: Return.HealthPer
    execute store result storage api: Return.HealthPer double 0.01 run scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary
