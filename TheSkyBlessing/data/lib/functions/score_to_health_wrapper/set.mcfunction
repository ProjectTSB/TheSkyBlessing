#> lib:score_to_health_wrapper/set
#
# プレイヤーのHPをその値に設定します。
#
# 値は100倍で入れる必要があります。
#
# @input
#   as player
#   score $Set Argument
# @api

#> temp
# @private
    #declare score_holder $Set

# セット
    scoreboard players operation @s ScoreToHealth = $Set Lib
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestAttackInfo.Type set value 0
# リセット
    scoreboard players reset $Set Lib