#> debug:change_believe/rumor
#
# 信仰をRumorに変更します
#
# @private
# @user

# 信仰解除
    function debug:change_believe/none
# 信仰
    tag @s remove Believe.None
    function player_manager:god/rumor/believe