#> lib:damage/core/show_damage_log
#
# ヘルスログシステムへのデータ受け渡し
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