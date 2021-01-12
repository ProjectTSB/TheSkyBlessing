#> lib:score_to_health_wrapper/fluctuation
#
# プレイヤーのHealthを増減します。
#
# 値は100倍で入れる必要があります。
#
# @input
#   as player
#   score $Fluctuation Argument
# @within function lib:**

#> temp
# @private
    #declare score_holder $Fluctuation

# 増減
    scoreboard players operation @s ScoreToHPFluc += $Fluctuation Lib
# リセット
    scoreboard players reset $Fluctuation Lib