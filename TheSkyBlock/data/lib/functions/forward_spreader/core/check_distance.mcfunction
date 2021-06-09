#> lib:forward_spreader/core/check_distance
#
# 点が中心から半径以内に存在するまで繰り返します
#
# @within function lib:forward_spreader/core/randomizer

#> Temporary
# @private
    #declare score_holder $Temp
    #declare score_holder $Temp2

# while ((x^2+y^2) > r^2) randomizer
    scoreboard players operation $Temp Temporary = $VecX Temporary
    scoreboard players operation $Temp Temporary *= $VecX Temporary

    scoreboard players operation $Temp2 Temporary = $VecY Temporary
    scoreboard players operation $Temp2 Temporary *= $VecY Temporary

    scoreboard players operation $Temp Temporary += $Temp2 Temporary

    execute if score $Temp Temporary > $Radius^2 Temporary run function lib:forward_spreader/core/randomizer
# リセット
    scoreboard players reset $Temp Temporary
    scoreboard players reset $Temp2 Temporary