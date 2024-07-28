#> api:entity/player/get_health_per
#
# 実行プレイヤーの現在体力を0～1の割合で取得します
#
# @output storage api: Return.HealthPer : double
# @api

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 現在体力を取得
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health 10000

# 最大体力を取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 10

# 計算結果を api: Return.HealthPer
    execute store result storage api: Return.HealthPer double 0.0001 run scoreboard players operation $Health Temporary /= $MaxHealth Temporary

# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary
