#> api:global_vars/game_progress
#
# 攻略進捗(全島のうち浄化された島の割合)を取得する
#
# @api
# @output storage api: Return.Progress

#> private
# @private
    #declare score_holder $GameProgress

scoreboard players operation $GameProgress Temporary = $PurifiedIslands Global
scoreboard players operation $GameProgress Temporary *= $1000 Const
execute store result storage api: Return.Progress double 0.001 run scoreboard players operation $GameProgress Temporary /= $TotalIslands Global
scoreboard players reset $GameProgress Temporary
