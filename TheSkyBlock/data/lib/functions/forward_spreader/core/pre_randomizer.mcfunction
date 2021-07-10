#> lib:forward_spreader/core/pre_randomizer
#
# ランダム座標生成前に半径等のデータを求めます
#
# @within function lib:forward_spreader/core/

# 半径を求める
    scoreboard players operation $Radius Temporary = $Diameter Temporary
    scoreboard players operation $Radius Temporary /= $2 Const
# 半径の二乗を求める
    scoreboard players operation $Radius^2 Temporary = $Radius Temporary
    scoreboard players operation $Radius^2 Temporary *= $Radius Temporary