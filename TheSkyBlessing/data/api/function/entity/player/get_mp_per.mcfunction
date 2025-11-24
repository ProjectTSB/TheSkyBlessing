#> api:entity/player/get_mp_per
#
# 実行プレイヤーの現在MPを0～1の割合で取得します
#
# @output storage api: Return.MPPer : double
# @api

#> Private
# @private
    #declare score_holder $MP
    #declare score_holder $MaxMP

# 現在MPを取得
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP 10000

# 最大MPを取得
    function api:mp/get_max
    execute store result score $MaxMP Temporary run data get storage api: Return.MaxMP 10

# 計算結果を api: Return.MPPer
    execute store result storage api: Return.MPPer double 0.001 run scoreboard players operation $MP Temporary /= $MaxMP Temporary

# リセット
    scoreboard players reset $MP Temporary
    scoreboard players reset $MaxMP Temporary
