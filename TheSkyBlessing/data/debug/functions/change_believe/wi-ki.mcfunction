#> debug:change_believe/wi-ki
#
# 信仰をWi-kiに変更します
#
# @private
# @user

# 信仰解除
    function debug:change_believe/none
# 信仰
    tag @s remove Believe.None
    function player_manager:god/wi-ki/believe