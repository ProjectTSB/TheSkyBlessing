#> api:mob/get_health_percent
#
# 実行Mobの現在体力を0～1の割合で取得します
#
# @output storage api: Return.HealthPer : double
# @api

#> 計算用スコアホルダー
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 現在体力を割合で出す
    execute store result score $Health Temporary run data get entity @s AbsorptionAmount 1000
    execute store result score $MaxHealth Temporary run function api:mob/get_max_health

# 計算結果を api: Return.HealthPer
    execute store result storage api: Return.HealthPer double 0.001 run scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary