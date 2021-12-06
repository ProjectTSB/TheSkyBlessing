#> lib:damage/core/damage_indicator
#
# 二分探索でparticleを表示する
#
# @within function lib:damage/core/health_subtract/

#>
# @private
#declare score_holder $Fluctuation

# 引数
    scoreboard players operation $Fluctuation Lib = $Damage Temporary
    scoreboard players operation $Fluctuation Lib /= $1000 Const
# 呼び出し
    function lib:health_log/show